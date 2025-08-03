import java.util.Scanner;
import java.util.Stack;
public class Main {
    public static void main(String[] args) {
//        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int P = sc.nextInt();
        int ans = 0;

        Stack<Integer>[] stacks = new Stack[7];
        for (int i = 1; i <= 6; i++) {
            stacks[i] = new Stack<>();
        }

        for(int i = 0; i < N; i++) {
            int line = sc.nextInt();
            int fret = sc.nextInt();

            Stack<Integer> stack = stacks[line];

            while( !stack.isEmpty() && stack.peek() > fret) {
                stack.pop();
                ans++;
            }

            if (!stack.isEmpty() && stack.peek() == fret) {
                continue;
            }

            stack.push(fret);
            ans++;

        }
        System.out.println(ans);
    }
}
