import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int M = sc.nextInt();

        char [][] map = new char[N][M];

        for (int i = 0; i < N; i++) {
            String row = sc.next();
            map[i] = row.toCharArray();
        }

        // 1. 각 행/열에 대해 경비원이 있는지 확인한다.
        boolean[] existRow = new boolean[N];
        boolean[] existCol = new boolean[M];
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                if(map[i][j] == 'X') {
                    existRow[i] = true;
                    existCol[j] = true;
                }
            }
        }

        int existRowCount = 0;
//        for (int i = 0; i < N; i++) {
//            boolean exist = false;
//            for (int j = 0; j < M; j++) {
//                if (map[i][j] == 'X') {
//                    exist = true;
//                    break;
//                }
//            }
//            if (exist) existRowCount++;
//        }

        int existColCount = 0;
//        for (int i = 0; i < M; i++) {
//            boolean exist = false;
//            for (int j = 0; j < N; j ++) {
//                if (map[j][i] == 'X') {
//                    exist = true;
//                    break;
//                }
//            }
//            if (exist) existColCount++;
//        }

        // 2. 보호받지 못하는 행/열의 개수를 구한다.
        int needRowCount = N;
        int needColCount = M;

        for (int i = 0; i < N; i++) {
            if (existRow[i]) needRowCount--;
        }

        for (int i = 0; i < M; i++) {
            if (existCol[i]) needColCount--;
        }

        // 3. 둘 중 큰 값을 출력한다.
        System.out.println(Math.max(needColCount, needRowCount));
    }
}