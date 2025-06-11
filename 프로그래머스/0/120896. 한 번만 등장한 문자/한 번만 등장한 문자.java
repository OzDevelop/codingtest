import java.util.*;

class Solution {
    public String solution(String s) {
        String answer = "";
        String[] wordArr = s.split("");
        int[] alphabet = new int[26];

        for(int i=0; i< wordArr.length; i++) {
            alphabet[wordArr[i].charAt(0) - 'a']++;
        }

        for(int i=0; i< alphabet.length; i++) {
            if (alphabet[i] == 1) {
                answer += (char)(i + 'a');
            }
        }
        return answer;
    }
}