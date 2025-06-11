import java.util.*;
class Solution {
    public int[] solution(int n, int[] numlist) {
        List<Integer> ansList = new ArrayList<>();
        
        for(int i=0; i<numlist.length; i++) {
            if (numlist[i] % n == 0) {
                ansList.add(numlist[i]);
            }
        }
        
        return ansList.stream().mapToInt(Integer::intValue).toArray();
    }
}