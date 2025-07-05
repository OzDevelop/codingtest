import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String ppap = br.readLine();

        Stack<Character> stack = new Stack<>();

        for(int i=0; i<ppap.length(); i++) {
            char c = ppap.charAt(i);
            if(c == 'P') {
                stack.push('P');
            } else if (c == 'A') {
                if(stack.size() >= 2 && i+1 < ppap.length() && ppap.charAt(i + 1) == 'P') {
                    stack.pop();
                    stack.pop();
                    stack.push('P');
                    i++;
                } else {
                    System.out.println("NP");
                    return;
                }

            }
        }
        System.out.println(stack.size() == 1 && stack.peek() == 'P' ? "PPAP" : "NP");
    }
}