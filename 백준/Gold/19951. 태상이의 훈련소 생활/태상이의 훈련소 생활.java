import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();   // 연병장 크기
        int M = sc.nextInt();   // 조교 수
        int[] height = new int[N+1]; // 각 칸의 높이
        int[] acc = new int[N+1];

        for(int i = 1; i < N+1; i++)
            height[i] = sc.nextInt();

        int[] delta = new int[N+2]; //변화량을 기록

        // 조교의 지시
        while(M-- > 0) {
            int a = sc.nextInt();
            int b = sc.nextInt();
            int k = sc.nextInt();

            // 시간초과
//            for(int i = a; i <= b; i++) {
//                acc[i] += k;
//            }
            delta[a] += k;
            delta[b+1] -= k;

        }
//        System.out.println(Arrays.toString(acc));

//        System.out.println(Arrays.toString(delta));
        for(int i = 1; i < N+1; i++) {
//            height[i] += acc[i];
            acc[i] = acc[i-1]  + delta[i];
        }
//        System.out.println(Arrays.toString(acc));


        for(int i = 1; i < N+1; i++ ) {
//            System.out.printf("%d ",height[i]);
            System.out.print(height[i] + acc[i]+ " ");
        }
    }
}
