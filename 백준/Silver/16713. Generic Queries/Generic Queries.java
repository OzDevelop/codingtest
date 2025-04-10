import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int Q = sc.nextInt();

        int[] arr = new int[N+1];

        // 강의 풀이
        for (int i = 1; i <= N; i++) {
            arr[i] = sc.nextInt();
        }

        // 1. 누적 xor 배열을 구함.
        int[] acc = new int[N + 1];
        for (int i = 1; i <= N; i++) {
            acc[i] = acc[i-1] ^ arr[i];
        }

        // 2. Q번 [s:e] 질문에 대해 누적XOR 배열을 사용해 구간 XOR을 구한다.
        int ans = 0;
        while(Q-- > 0) {
            int s = sc.nextInt();
            int e = sc.nextInt();
            ans ^= acc[e] ^ acc[s - 1];
        }

        System.out.println(ans);


        // 내 풀이
//        int[] prefixXOR = new int[N + 1];

//        for (int i = 1; i <= N; i++) {
//            int num = sc.nextInt();
//            prefixXOR[i] = prefixXOR[i - 1] ^ num;
//        }
//
//        int result = 0;
//
//        for (int i = 0; i < Q; i++) {
//            int left = sc.nextInt();
//            int right = sc.nextInt();
//
//            result ^= (prefixXOR[right] ^ prefixXOR[left - 1]);
//        }
//
//        System.out.println(result);
    }
}