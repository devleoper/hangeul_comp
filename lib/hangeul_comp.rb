class String
  def ko_compose
    string = self.split("")

    result = ""

    string.each_with_index do |char, i| 
      # 앞에서 이미 처리가 완료되어 nil이 된 경우 다음으로 넘어갑니다.
      next unless char

      # 글자에서 첫소리를 찾아냅니다. 첫소리로 시작하지 않는 경우 다음으로 넘어갑니다.
      unless (0x1100 .. 0x1112).include? char.ord
        result += char
        next
      end

      # 다음 글자가 가운뎃소리인지 확인합니다. 
      if (0x1161 .. 0x1175).include? string[i+1].ord
        # 가운뎃소리일 경우 킵해둡니다.
        jungseong, string[i+1] = string[i+1], nil
      else
        # 가운뎃소리가 아닌 경우 현재 문자를 결과와 합치고, 다음으로 넘어갑니다.
        result += char
        next
      end

      i_choseong = char.ord - 0x1100
      i_jungseong = jungseong.ord - 0x1161

      # 다음 글자가 끝소리인지 확인합니다.
      i_jongseong = if string[i+2] && ((0x11a8 .. 0x11c2).include? string[i+2].ord)
        # 끝소리인 경우 keep해둡니다.
        jongseong, string[i+2] = string[i+2], nil
        jongseong.ord - 0x11a8 + 1
      else
        0
      end

      # 합체!!!
      char = [0xac00 + (i_choseong * 28 * 21) + (i_jungseong * 28) + i_jongseong].pack("U")
      result += char
    end

    result
  end

  def ko_decompose
    result = ""

    self.each_char do |char, i|
      unless (44032 .. 55203).include? char.ord
        result += char
        next
      end

      char = char.ord - 0xAC00

      i_jongseong = char % 28
      i_jungseong = ((char - i_jongseong) % (28 * 21)) / 28
      i_choseong  = (char / (28 * 21)).floor

      jongseong = if i_jongseong != 0
        0x11a8 + i_jongseong - 1
      else
        nil
      end

      jungseong = i_jungseong + 0x1161
      choseong  = i_choseong + 0x1100

      # 조금 더 깔끔하게 할 수 있는 방법이 있을까요....
      result += [choseong].pack("U") + [jungseong].pack("U")
      result += [jongseong].pack("U") if jongseong
    end

    result
  end
end
