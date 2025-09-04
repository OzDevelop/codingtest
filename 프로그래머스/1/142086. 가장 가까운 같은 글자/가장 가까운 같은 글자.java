import java.util.*;

class Solution {
    public int[] solution(String s) {
        int[] answer = new int[s.length()];
        Map<Character, Integer> map = new HashMap<>();
        
        char[] arr = s.toCharArray();
    
        for(int i=0; i<arr.length; i++) {
            if(!map.containsKey(arr[i])) {
                map.put(arr[i], i);
                answer[i] = -1;
            } else {
                answer[i] = i - map.get(arr[i]);
                map.put(arr[i], i);
            }
        }
        
        return answer;
    }
}