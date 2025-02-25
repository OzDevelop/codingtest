import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int ans;

        int start = Math.max(1, N - (String.valueOf(N).length() * 9));
        for (int M = start; M < N; M++) {
            int sum = M;
            int temp = M;

            while (temp > 0) {
                sum += temp % 10;
                temp /= 10;
            }

            if (sum == N) {
                System.out.println(M);
                return;
            }
        }
        System.out.println(0);
    }
}