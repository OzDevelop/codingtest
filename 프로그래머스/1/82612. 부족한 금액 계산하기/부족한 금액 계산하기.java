import java.util.*;
class Solution {
    public long solution(int price, int money, int count) {
        long answer = 0;
        long totalprice = 0;
        for(int i=1; i<=count; i++) {
            totalprice += price * i;
        }
        
        if (totalprice - money <= 0) answer = 0;
        else  answer = Math.abs(totalprice - money);
        return answer;
    }
}