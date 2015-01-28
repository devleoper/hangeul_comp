require 'minitest/autorun'
require 'hangeul_comp'

class HangeulCompTest < Minitest::Test
  def test_decompose
    assert_equal "\u110b\u1161\u11ab\u1102\u1167\u11bc",
      "안녕".ko_decompose

    assert_equal "\u110b\u1161\u1105\u1173\u11b7\u1103\u1161\u110b\u116f♥",
      "아름다워♥".ko_decompose

    assert_equal "The quick brown fox jumps over a lazy dog\n\u1103\u1161\u1105\u1161\u11b7\u110c\u1171 \u1112\u1165\u11ab \u110e\u1166\u11ba\u1107\u1161\u110f\u1171\u110b\u1166 \u1110\u1161\u1100\u1169\u1111\u1161",
      "The quick brown fox jumps over a lazy dog\n다람쥐 헌 쳇바퀴에 타고파".ko_decompose

    assert_equal "初音ミク \u1100\u1171\u110b\u1167\u11b8\u110c\u1175 \u110b\u1161\u11ad\u1102\u1175?",
      "初音ミク 귀엽지 않니?".ko_decompose
  end

  def test_compose
    assert_equal "배고파",
      "\u1107\u1162\u1100\u1169\u1111\u1161".ko_compose

    assert_equal "나는 ARM이 좋아!",
      "\u1102\u1161\u1102\u1173\u11ab ARM\u110b\u1175 \u110c\u1169\u11c2\u110b\u1161!".ko_compose

    assert_equal "거북 구(龜)자 싫다.",
      "\u1100\u1165\u1107\u116e\u11a8 \u1100\u116e(龜)\u110c\u1161 \u1109\u1175\u11b6\u1103\u1161.".ko_compose

    assert_equal "뿌잉★",
      "\u1108\u116e\u110b\u1175\u11bc★".ko_compose
  end
end