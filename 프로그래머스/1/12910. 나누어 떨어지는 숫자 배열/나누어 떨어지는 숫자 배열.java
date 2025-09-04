import java.util.*;
class Solution {
    public int[] solution(int[] arr, int divisor) {
        ArrayList<Integer> list = new ArrayList<>();
        
        for(int num : arr) {
            if (num % divisor == 0) list.add(num);
        }
        int[] answer = new int[list.size()];
        
        int idx =0;
        for(int num : list) {
            answer[idx] = list.get(idx);
            idx++;
        }
        Arrays.sort(answer);
        
        return answer.length == 0 ? new int[]{-1} : answer;
    }
}