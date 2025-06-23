
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.Deque;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String line;

        while (!(line = br.readLine()).equals(".")) {
            Deque<Character> stack = new ArrayDeque<>();
            boolean isValid = true;

            for (char c : line.toCharArray()) {
                if (c == '(' || c == '[') {
                    stack.addLast(c);
                } else if (c == ')') {
                    if (!stack.isEmpty() && stack.getLast() == '(') {
                        stack.removeLast();
                    } else {
                        isValid = false;
                        break;
                    }
                } else if (c == ']') {
                    if (!stack.isEmpty() && stack.getLast() == '[') {
                        stack.removeLast();
                    } else {
                        isValid = false;
                        break;
                    }
                }
            }

            if (isValid && stack.isEmpty()) {
                System.out.println("yes");
            } else {
                System.out.println("no");
            }
        }
    }
}
