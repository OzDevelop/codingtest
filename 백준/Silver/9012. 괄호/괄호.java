
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.Deque;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());


        while(N-- >0) {
            String testcase = br.readLine();
            Deque<Character> stack = new ArrayDeque<>();
            boolean isValid = true;

            for (Character c : testcase.toCharArray()) {
                if(c == '(') {
                    stack.add(c);
                } else if (c == ')') {
                    if (!stack.isEmpty()) {
                        stack.remove();
                    } else {
                        isValid = false;
                        break;
                    }
                }
            }
            if (stack.isEmpty() && isValid) {
                System.out.println("YES");
            } else {
                System.out.println("NO");
            }
        }
    }
}