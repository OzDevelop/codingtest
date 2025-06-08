import java.util.*;
class Solution {
public  int solution(String s) {
    int answer = 0;
    String[] arr = s.split(" ");
    Stack<Integer> stack = new Stack<>();

    for (String token : arr) {
        if (token.equals("Z")) {
            if (!stack.isEmpty()) {
                stack.pop(); 
            }
        } else {
            stack.push(Integer.parseInt(token));
        }
    }

    for (int num : stack) {
        answer += num;
    }

    return answer;
}
}