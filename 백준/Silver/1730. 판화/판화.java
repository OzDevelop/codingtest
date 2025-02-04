import java.util.Arrays;
import java.util.Scanner;

//public class baekjoon_1730 {
//    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//
//        int N = sc.nextInt();
//        sc.nextLine();
//        char[] movement = new char[0];
//        // https://help.acmicpc.net/judge/rte/NoSuchElement 읽어보기 이거 때매 계속 에러남
//        if (sc.hasNextLine()) {
//            movement = sc.nextLine().toCharArray();
//        }
//
//        boolean[][] horizontal = new boolean[N][N];
//        boolean[][] vertical = new boolean[N][N];
//        char[][] map = new char[N][N];
//
////        System.out.println(Arrays.asList(movement));
//        int horizontalIndex = 0, verticalIndex = 0;
//        for (char move : movement) {
//            if (move == 'L') {
//                if (horizontalIndex > 0) { // 왼쪽 이동 시 범위 체크
//                    horizontal[verticalIndex][horizontalIndex] = true;
//                    horizontal[verticalIndex][--horizontalIndex] = true;
//                }
//            } else if (move == 'R') {
//                if (horizontalIndex < N - 1) { // 오른쪽 이동 시 범위 체크
//                    horizontal[verticalIndex][horizontalIndex] = true;
//                    horizontal[verticalIndex][++horizontalIndex] = true;
//                }
//            } else if (move == 'U') {
//                if (verticalIndex > 0) { // 위로 이동 시 범위 체크
//                    vertical[verticalIndex][horizontalIndex] = true;
//                    vertical[--verticalIndex][horizontalIndex] = true;
//                }
//            } else if (move == 'D') {
//                if (verticalIndex < N - 1) { // 아래로 이동 시 범위 체크
//                    vertical[verticalIndex][horizontalIndex] = true;
//                    vertical[++verticalIndex][horizontalIndex] = true;
//                }
//            }
//        }
////        System.out.println(Arrays.deepToString(horizontal));
////        System.out.println(Arrays.deepToString(vertical));
//
//        for (int i = 0; i < N; i++) {
//            for (int j = 0; j < N; j++) {
//                map[i][j] = '.';
//
//                if (horizontal[i][j]) {
//                    map[i][j] = '-';
//                }
//                if (vertical[i][j]) {
//                    map[i][j] = '|';
//                }
//                if (horizontal[i][j] && vertical[i][j]) {
//                    map[i][j] = '+';
//                }
//            }
//        }
//
//   /*
//        for (int i = 0; i < N; i++) {
//            for (int j = 0; j < N; j++) {
//                System.out.print(map[i][j]);
//            }
//            System.out.println();
//        }
//  */
//        for (char[] row : map) {
//            System.out.println(row);
//        }
//    }
//}

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        String command = sc.hasNext() ? sc.next() : "";

        boolean[][] passVertical = new boolean[N][N];
        boolean[][] passHorizontal = new boolean[N][N];

        int curR = 0, curC = 0; // currentRow, currentColumn
        for(int i = 0; i < command.length(); i++) {
            char cmd = command.charAt(i);
            if (cmd == 'D') {
                if(curR == N - 1) continue;
                // Vertical의 현재와 아래 한칸을 true로 변경
                passVertical[curR][curC] = passVertical[++curR][curC] = true;
            } else if (cmd == 'U') {
                if(curR == 0) continue;
                passVertical[curR][curC] = passVertical[--curR][curC] = true;
            } else if (cmd == 'L') {
                if(curC == 0) continue;
                passHorizontal[curR][curC] = passHorizontal[curR][--curC] = true;
            } else {
                if(curC == N - 1) continue;
                passHorizontal[curR][curC] = passHorizontal[curR][++curC] = true;
            }
        }

        for (int i = 0; i < N; i++) {
            String ans = "";
            for (int j = 0; j < N; j++) {
                if(passVertical[i][j] && passHorizontal[i][j]) ans += "+";
                else if (passVertical[i][j]) ans += "|";
                else if (passHorizontal[i][j]) ans += "-";
                else ans += ".";
            }
            System.out.println(ans);
        }
    }
}