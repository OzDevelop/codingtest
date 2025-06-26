import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());

        while (N-- > 0) {
            String input = br.readLine();

            Stack<Character> left = new Stack<>();
            Stack<Character> right = new Stack<>();

            for (char ch : input.toCharArray()) {
                if (ch == '<') {
                    if (!left.isEmpty()) right.push(left.pop());
                } else if (ch == '>') {
                    if (!right.isEmpty()) left.push(right.pop());
                } else if (ch == '-') {
                    if (!left.isEmpty()) left.pop();
                } else {
                    left.push(ch);
                }
            }

            StringBuilder sb = new StringBuilder();
            for (char c : left) sb.append(c);
            while (!right.isEmpty()) sb.append(right.pop());

            System.out.println(sb);
        }
    }
}