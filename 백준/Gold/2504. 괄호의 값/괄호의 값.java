import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String parentheses = br.readLine();

        Stack<Object> stack = new Stack<>();
        boolean isValid = true;

        String s = "";
        for(int i=0; i<parentheses.length(); i++) {
            char cur = parentheses.charAt(i);
            if(cur == '(' || cur == '[') {
                stack.push(cur);
            } else {
                int tmp = 0;

                while(!stack.isEmpty() && stack.peek() instanceof Integer) {
                    tmp += (Integer) stack.pop();
                }

                if (stack.isEmpty()) {
                    isValid = false;
                    break;
                }

                char open = (char) stack.pop();
                if((cur == ')' && open != '(') || (cur == ']' && open != '[')) {
                    isValid = false;
                    break;
                }
                int val = (cur == ')') ? 2 : 3;
                stack.push(tmp == 0 ? val : val * tmp);
            }
        }

        int result = 0;
        while (!stack.isEmpty()) {
            if (stack.peek() instanceof Character) {
                isValid = false;
                break;
            }
            result += (Integer) stack.pop();
        }

        System.out.println(isValid ? result : 0);

    }
}
