
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        sc.nextLine();
        char[] movement = new char[0];
        if (sc.hasNextLine()) {
            movement = sc.nextLine().toCharArray();
        }

        boolean[][] horizontal = new boolean[N][N];
        boolean[][] vertical = new boolean[N][N];
        char[][] map = new char[N][N];

//        System.out.println(Arrays.asList(movement));
        int horizontalIndex = 0, verticalIndex = 0;
        for (char move : movement) {
            if (move == 'L') {
                if (horizontalIndex > 0) { // 왼쪽 이동 시 범위 체크
                    horizontal[verticalIndex][horizontalIndex] = true;
                    horizontal[verticalIndex][--horizontalIndex] = true;
                }
            } else if (move == 'R') {
                if (horizontalIndex < N - 1) { // 오른쪽 이동 시 범위 체크
                    horizontal[verticalIndex][horizontalIndex] = true;
                    horizontal[verticalIndex][++horizontalIndex] = true;
                }
            } else if (move == 'U') {
                if (verticalIndex > 0) { // 위로 이동 시 범위 체크
                    vertical[verticalIndex][horizontalIndex] = true;
                    vertical[--verticalIndex][horizontalIndex] = true;
                }
            } else if (move == 'D') {
                if (verticalIndex < N - 1) { // 아래로 이동 시 범위 체크
                    vertical[verticalIndex][horizontalIndex] = true;
                    vertical[++verticalIndex][horizontalIndex] = true;
                }
            }
        }
//        System.out.println(Arrays.deepToString(horizontal));
//        System.out.println(Arrays.deepToString(vertical));

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                map[i][j] = '.';

                if (horizontal[i][j]) {
                    map[i][j] = '-';
                }
                if (vertical[i][j]) {
                    map[i][j] = '|';
                }
                if (horizontal[i][j] && vertical[i][j]) {
                    map[i][j] = '+';
                }
            }
        }

//        for (int i = 0; i < N; i++) {
//            for (int j = 0; j < N; j++) {
//                System.out.print(map[i][j]);
//            }
//            System.out.println();
//        }

        for (char[] row : map) {
            System.out.println(row);
        }
    }
}
