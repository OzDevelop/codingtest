import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int Q = sc.nextInt();

        int[] prefixXOR = new int[N + 1];

        for (int i = 1; i <= N; i++) {
            int num = sc.nextInt();
            prefixXOR[i] = prefixXOR[i - 1] ^ num;
        }

        int result = 0;

        for (int i = 0; i < Q; i++) {
            int left = sc.nextInt();
            int right = sc.nextInt();

            result ^= (prefixXOR[right] ^ prefixXOR[left - 1]);
        }

        System.out.println(result);
    }
}


