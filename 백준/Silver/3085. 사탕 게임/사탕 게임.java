import java.util.Scanner;

// 사탕 게임
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt(); // size
        int ans = 0; // answer

        char[][] candy = new char[N][N];
        for (int i = 0; i < N; i++) {
            char[] row = sc.next().toCharArray();

            for (int j = 0; j < N; j++) {
                candy[i][j] = row[j];
            }
        }
//        System.out.println(Arrays.deepToString(candy));


        //changePosition, 상하좌우 위치 바꾸기
        int[] dx = {0, -1, 0, 1};
        int[] dy = {-1, 0, 1, 0};

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                for (int k = 0; k < 4; k++) {
                    int nextX = i + dx[k];
                    int nextY = j + dy[k];

                    if( nextX >= 0 && nextX < N && nextY >= 0 && nextY < N ) {
                        // 위치 교환
                        swap(candy, i, j, nextX, nextY);

                        // 최대 연속값 계산
                        ans = Math.max(ans, getMaxCandy(candy));

                        // 위치 복원
                        swap(candy, i, j, nextX, nextY);
                    }
                }
            }
        }

        System.out.println(ans);
    }

    public static int countRow(char[][] candy) {
        int result = 0;

        for (int i = 0; i < candy.length; i++) {
            int count = 1;
            for (int j = 0; j < candy[i].length - 1; j++) {
                if (candy[i][j] == candy[i][j+1]) {
                    count++;
                } else {
                    result = Math.max(result, count);
                    count = 1;
                }
            }
            result = Math.max(result, count);
        }
        return result;
    }

    public static int countCol(char[][] candy) {
        int result = 0;
        for (int i = 0; i < candy.length; i++) {
            int count = 1;
            for (int j = 0; j < candy[i].length - 1; j++) {
                if(candy[j][i] == candy[j+1][i]) {
                    count++;
                } else {
                    result = Math.max(result, count);
                    count = 1;
                }
            }
            result = Math.max(result, count);
        }
        return result;
    }

    // 행과 열에서 가장 긴 연속 사탕의 길이를 반환하는 함수
    public static int getMaxCandy(char[][] candy) {
        int maxCandy = 0;
        maxCandy = Math.max(maxCandy, countRow(candy)); // 행 기준
        maxCandy = Math.max(maxCandy, countCol(candy)); // 열 기준
        return maxCandy;
    }

    // 두 위치의 사탕을 교환하는 함수
    public static void swap(char[][] candy, int x1, int y1, int x2, int y2) {
        char temp = candy[x1][y1];
        candy[x1][y1] = candy[x2][y2];
        candy[x2][y2] = temp;
    }
}
