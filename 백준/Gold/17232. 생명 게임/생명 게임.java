import java.util.Arrays;
import java.util.Map;
import java.util.Scanner;

/** 입력값
 * 6 6 7
 * 1 2 3
 * .*....
 * ..*...
 * ***...
 * ......
 * ......
 * ......
 */

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int M = sc.nextInt();
        int T = sc.nextInt();

        int K = sc.nextInt();
        int a = sc.nextInt();
        int b = sc.nextInt();

        char[][] map = new char[N+1][M+1];
        for(int i = 1; i <= N; i++) {
            String rowMap = sc.next();
            for (int j = 1; j <= M; j++) {
                map[i][j] = rowMap.charAt(j-1);
            }
        }

        while (T-- > 0) {
            int[][] acc = getPrefixSum(map);
            for(int i = 1; i <= N; i++) {
                for(int j = 1; j <= M; j++) {
                    int nearAlive = getRangeSum(acc, i, j, K);
                    if (map[i][j] == '*') {
                        nearAlive--;
                        if (nearAlive < a || b < nearAlive)
                            map[i][j] = '.';
                    }
                    else if (a < nearAlive && nearAlive <= b)
                        map[i][j] = '*';
                }
            }
        }

        for(int i = 1; i <=N; i++) {
            for(int j=1; j<=M; j++) {
                System.out.print(map[i][j]);
            }
            System.out.println();
        }

    }

    private static int[][] getPrefixSum(char[][] map) {
        int[][] acc = new int[map.length][map[0].length];
        for (int i = 1; i < map.length; i++) {
            for(int j = 1; j < map[0].length; j++) {
                acc[i][j] = acc[i-1][j] + acc[i][j-1] - acc[i-1][j-1] + (map[i][j] == '*' ? 1 : 0);
            }
        }
        return acc;
    }

    private static int getRangeSum(int[][] acc, int r, int c, int K) {
        int r1 = Math.max(r - K, 1);
        int c1 = Math.max(c - K, 1);
        int r2 = Math.min(r + K, acc.length -1);
        int c2 = Math.min(c + K, acc[0].length -1);

        return acc[r2][c2] - acc[r2][c1-1] - acc[r1 -1][c2] + acc[r1-1][c1-1];
    }
}
