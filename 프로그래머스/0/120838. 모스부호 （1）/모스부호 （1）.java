import java.util.HashMap;
import java.util.Map;
class Solution {
    public String solution(String letter) {
        String[] morse = {
            ".-","-...","-.-.","-..",".","..-.","--.","....","..",
            ".---","-.-",".-..","--","-.","---",".--.","--.-",".-.",
            "...","-","..-","...-",".--","-..-","-.--","--.."
        };

        // Map으로 모스부호 -> 알파벳 매핑
        Map<String, Character> morseMap = new HashMap<>();
        for (int i = 0; i < morse.length; i++) {
            morseMap.put(morse[i], (char)(i + 'a'));
        }

        String[] letterArr = letter.split(" ");
        StringBuilder sb = new StringBuilder();

        for (String code : letterArr) {
            sb.append(morseMap.get(code));
        }

        return sb.toString();
    }
}