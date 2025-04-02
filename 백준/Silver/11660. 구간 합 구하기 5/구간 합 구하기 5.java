import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int M = sc.nextInt();

        int SIZE = N + 1;

        int[][] table = new int[SIZE][SIZE];
        int[][] acc = new int[SIZE][SIZE];
        sc.nextLine();

        // table 배열 초기화
        for (int i = 1; i <= N; i++) {
            for (int j = 1; j <= N; j++) {
                table[i][j] = sc.nextInt();
            }
        }

//        System.out.println(Arrays.deepToString(table));

//       ex)
//      0 0 0 0 0     0 0 0 0 0
//      0 1 2 3 4     0 1 3 5 7
//      0 2 3 4 5     0 3 6
//      0 3 4 5 6
//      0 4 5 6 7

        // 2차원 구간합 초기화
        for(int i = 1; i < SIZE; i++) {
            for(int j = 1; j < SIZE; j++) {
                acc[i][j] = acc[i-1][j] + acc[i][j-1] - acc[i-1][j-1] + table[i][j];
            }
        }
//        System.out.println(Arrays.deepToString(acc));

        while(M-- > 0) {
            int x1 = sc.nextInt();
            int y1 = sc.nextInt();
            int x2 = sc.nextInt();
            int y2 = sc.nextInt();
//            System.out.println(Arrays.toString(point));

            int result = acc[x2][y2] - acc[x1 -1][y2] - acc[x2][y1 - 1] + acc[x1 - 1][y1 - 1];
            System.out.println(result);
        }
    }
}
