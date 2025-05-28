import java.util.Arrays;
import java.util.Scanner;

public class Main {
    static long calcMinimumSupport(int[] cost, int[] budget, int assignCount) {
        long needDiff = 0;
        for(int i=0; i< assignCount; i++) {
            needDiff += Math.max(cost[i] - budget[budget.length - assignCount + i], 0); 
        }


        return needDiff;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        // -- 초기화 --
        int N = sc.nextInt(); // 동방 수
        int M = sc.nextInt(); // 동아리 수
        int X = sc.nextInt(); // 종빈의 예산
        int[] cost = new int[N];
        int[] budget = new int[M];

        int ans = 0;

        for(int i=0; i< N; i++) {
            cost[i] = sc.nextInt();
        }
        for(int i=0; i< M; i++) {
            budget[i] = sc.nextInt();
        }
        // -- --

        Arrays.sort(cost);
        Arrays.sort(budget);

        int l = 0;
        int r = Math.min(N, M);
        while (l <= r) {
            int m = (l + r) / 2;
            if(calcMinimumSupport(cost, budget, m) <= X) {
                ans = m;
                l = m + 1;
            } else r = m-1;

        }
        System.out.println(ans);
    }
}