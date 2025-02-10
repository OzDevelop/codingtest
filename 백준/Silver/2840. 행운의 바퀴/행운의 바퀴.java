import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int K = sc.nextInt();

        char[] ans = new char[N];
        boolean[] used = new boolean[26]; //알파벳 중복 체크

//        for(int i = 0; i < N; i++){
//            ans[i] = '?';
//        }
        // Arrays.fill 함수 사용
        Arrays.fill(ans, '?');

        int count = 0;

        for (int i = 0; i < K; i++) {
            int S = sc.nextInt();

            if (!sc.hasNext()) {
                System.out.println("!");
                return;
            }

            char alphabet = sc.next().charAt(0);

            if (alphabet < 'A' || alphabet > 'Z') {
                System.out.println("!");
                return;
            }

            count = (count - S % N + N) % N;

            if (ans[count] != alphabet && ans[count] != '?') {
                System.out.println("!");
                return;
            }

            if (ans[count] == '?' && used[alphabet - 'A']) {
                System.out.println("!");
                return;
            }

            ans[count] = alphabet;
            used[alphabet - 'A'] = true;
//            System.out.println(Arrays.toString(ans));
        }

        for (int i = 0; i < N; i++) {
            System.out.print(ans[(count + i) % N]);
        }
//        System.out.printf("%d, %d",N,K);
    }
}
