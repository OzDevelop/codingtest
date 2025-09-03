import java.util.*;
class Solution {
    public int solution(int[] d, int budget) {
        int ans = 0;
        int[] prefixSum = new int[d.length + 1];
        Arrays.sort(d);
        for(int i=1; i<=d.length; i++) {
            prefixSum[i] = prefixSum[i-1] + d[i-1];
        }
        
        for(int i=1; i<= d.length; i++) {
            if(prefixSum[i] <= budget) {
                ans = i;
            } else { break;}
        }
        
        
        return ans;
    }
}