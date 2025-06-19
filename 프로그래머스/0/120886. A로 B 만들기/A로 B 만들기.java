import java.util.*;

class Solution {
    public int solution(String before, String after) {
        int[] alphabet = new int[26];

        for(Character c : before.toCharArray()) {
            alphabet[c - 'a']++;
        }

        for(Character c : after.toCharArray()) {
            alphabet[c - 'a']--;
        }

        return Arrays.stream(alphabet).allMatch(count -> count == 0) ? 1 : 0;   
    }
}