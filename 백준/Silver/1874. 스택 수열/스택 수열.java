import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Stack;

public class Main {
     public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Stack<Integer> stack = new Stack<>();
        List<String> ans = new ArrayList<>();

        int now = 1;
        int n = sc.nextInt();
        boolean flag = false;

        for(int i=0; i<n; i++) {
            int num = sc.nextInt();

            while (now <= num) {
                stack.push(now);
                ans.add("+");
                now++;
            }

            if (stack.lastElement() == num) {
                stack.pop();
                ans.add("-");
            } else {
                System.out.println("NO");
                flag = true;
                break;
            }
        }
        if(!flag) {
            for (int i = 0; i < ans.size(); i++) {
                System.out.println(ans.get(i));
            }
        }
    }
}