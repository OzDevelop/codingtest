import java.util.*;
class Solution {
    public int solution(String my_string) {
        String[] token = my_string.split(" ");
        int answer = Integer.parseInt(token[0]);

        for(int i=1; i< token.length; i+= 2) {
            String operator = token[i];
            int number = Integer.parseInt(token[i+1]);

            if (operator.equals("+")) {
                answer += number;
            } else if (operator.equals("-")) {
                answer -= number;
            }
        }
        return answer;
    }
}