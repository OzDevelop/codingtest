import java.util.Arrays;
import java.util.Scanner;
import java.util.Stack;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int[] A = new int[N];
        int[] ans = new int[N];
        Arrays.fill(ans, -1);

        for (int i = 0; i < N; i++) {
            A[i] = sc.nextInt();
        }

        Stack<Integer> stack = new Stack<>();

        for (int i = 0; i < N; i++) {
            while (!stack.isEmpty() && A[i] > A[stack.peek()]) {
                int index = stack.pop();
                ans[index] = A[i];
            }
            stack.push(i);
        }

        StringBuilder sb = new StringBuilder();
        for (int val: ans) {
            sb.append(val).append(" ");
        }
        System.out.println(sb.toString().trim());

    }
}
