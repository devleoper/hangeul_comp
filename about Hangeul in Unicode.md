## 한글 유니코드에 대한 간략한 고찰 

### 유니코드 조합형 한글 코드

  유니코드 조합형 한글 코드의 경우에는 한국어 한 글자가 유니코드 문자 두개 혹은 세개로 이루어집니다.

 * 첫소리(19개): 0x1100 ~ 0x1112
 * 가운뎃소리(21개): 0x1161 ~ 0x1175
 * 끝소리(27개 + 비어있는 경우): 0x11a8 ~ 0x11c2
 * 예시) 빵 -> ㅃ(0x1108) + ㅏ(0x1161) + ㅇ(0x11bc)

### 유니코드 완성형 한글 코드

  유니코드 완성형 한글 코드의 경우에는 한국어 한 글자가 유니코드 문자 하나와 대응합니다. 데이터를 적게 먹기 때문에 자주 사용됩니다.

 * 가 : 0xac00
 * 각 : 0xac01
 * ……
 * 빵 : 0xbe75
 * ……
 * 힢 : 0xd7a2
 * 힣 : 0xd7a3

## About Hangeul in Unicode Character Set

### Combinative Hangeul Code 

   Characters on Unicode Range "Hangul Jamo" are combinative — one completed Hangeul letter consists of 2 or 3 characters on the range.

 * 첫소리(first sound, 19): 0x1100 ~ 0x1112
 * 가운뎃소리(middle sound, 21): 0x1161 ~ 0x1175
 * 끝소리(last sound, 27 + and empty case): 0x11a8 ~ 0x11c2
 * example) 빵 -> ㅃ(0x1108) + ㅏ(0x1161) + ㅇ(0x11bc)

### Completive Hangeul Code

  Characters on Unicode Range "Hangul Syllables" are completive — one completed Hangeul letter corresponds to one character on this range. (Writing text in this range is more efficient, so this is commonly used.)

 * 가 : 0xac00
 * 각 : 0xac01
 * ……
 * 빵 : 0xbe75
 * ……
 * 힢 : 0xd7a2
 * 힣 : 0xd7a3
