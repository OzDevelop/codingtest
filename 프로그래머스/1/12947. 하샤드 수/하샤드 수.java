import java.util.*;
class Solution {
    public boolean solution(int x) {
        boolean answer = true;
        
        String[] arr = String.valueOf(x).split(""); // ["1", "0"]
        int sum = 0;
        for(int i = 1; i<=arr.length; i++) {
             sum += Integer.parseInt(arr[i-1]);
        }
        
        if(x % sum == 0) answer = true;
        else answer = false;
        
        return answer;
    }
}