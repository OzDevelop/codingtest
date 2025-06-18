
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StringBuilder sb = new StringBuilder();

        int T = sc.nextInt();
        sc.nextLine();

        while (T-- > 0) {
            String p = sc.nextLine();
            int n = Integer.parseInt(sc.nextLine());
            String arrStr = sc.nextLine();

            arrStr = arrStr.substring(1, arrStr.length() - 1);
            String[] split = arrStr.equals("") ? new String[0] : arrStr.split(",");

            Deque<String> deque = new ArrayDeque<>(Arrays.asList(split));
            boolean isReversed = false;
            boolean isError = false;

            for (char cmd : p.toCharArray()) {
                if (cmd == 'R') {
                    isReversed = !isReversed;
                } else if (cmd == 'D') {
                    if (deque.isEmpty()) {
                        sb.append("error\n");
                        isError = true;
                        break;
                    } else {
                        if (isReversed) {
                            deque.pollLast();
                        } else {
                            deque.pollFirst();
                        }
                    }
                }
            }

            if (!isError) {
                sb.append("[");
                while (!deque.isEmpty()) {
                    sb.append(isReversed ? deque.pollLast() : deque.pollFirst());
                    if (!deque.isEmpty()) {
                        sb.append(",");
                    }
                }
                sb.append("]\n");
            }
        }

        System.out.print(sb);
    }
}