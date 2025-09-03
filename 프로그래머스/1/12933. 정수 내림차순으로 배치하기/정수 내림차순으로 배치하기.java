import java.util.*;
class Solution {
    public long solution(long n) {
        long answer = 0;
        StringBuilder sb = new StringBuilder();
        String[] arr = String.valueOf(n).split("");
        
        Arrays.sort(arr);
        for(int i=0 ;i<arr.length; i++) {
            sb.append(arr[arr.length -1 -i]);
        }
        
        
        return Long.parseLong(sb.toString());
    }
}