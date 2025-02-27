import java.util.Arrays;
import java.util.Scanner;

public class Main {
    static final int BOARD_SIZE = 8;

    private static int countDifferent( char[][] map, int startRow, int startColumn, String pattern ) {
        int cnt = 0;
        for (int i = startRow; i< startRow + BOARD_SIZE; i++) {
            for (int j = startColumn; j< startColumn + BOARD_SIZE; j++)
                if (map[i][j] != pattern.charAt((i+j) % 2))
                    cnt++;
        }
        return  cnt;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int M = sc.nextInt();

        char[][] board = new char[N][M];
        for (int i = 0; i < N; i++) {
                String line = sc.next();
                board[i] = line.toCharArray();
        }

//        System.out.println(Arrays.deepToString(board));

        int ans = Integer.MAX_VALUE;
        for (int i = 0; i <= N - BOARD_SIZE; i++) {
            for (int j = 0; j <= M - BOARD_SIZE; j++) {
                int countBW = countDifferent(board, i, j, "BW");
                int countWB = countDifferent(board, i, j, "WB");
                ans = Math.min(ans, Math.min(countBW, countWB));
            }
        }
        System.out.println(ans);
    }
}
