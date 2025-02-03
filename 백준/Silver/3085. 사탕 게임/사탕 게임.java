/*
🦊 검증 케이스 줄이기
인접한 칸의 교환 시 네 방향을 모두 확인하는 것이 아닌
증가하는 두 방향만 확인을 통해 케이스를 줄일 수 있다. => 중복 확인 경우를 줄일 수 있음
A B C  가 있다고 가정할때, B에서도 E를 확인하고, E에서도 B를 검증하는 등 중복이 발생하기 때문
D E F
G H I

🦊배열의 인접칸 조사할 경우 항상 범위를 우선 확인하자.(올바른 좌표인지)

🦊시간 복잡도 - O(N^4)
 */
import java.util.Scanner;

public class Main {

    public static int findMaxRow(char[][] map) {
        int N = map.length;
        int maxRow = 0;
        for (int r = 0; r < N; r++) {
            int len = 1;
            for (int c = 1; c < N; c++) {
                if (map[r][c] == map[r][c - 1]) len++;
                else {
                    maxRow = Math.max(maxRow, len);
                    len = 1;
                }
            }
            maxRow = Math.max(maxRow, len);
        }
        return maxRow;
    }

    public static int findMaxColumn(char[][] map) {
        int N = map.length;
        int maxColumn = 0;
        for (int c = 0; c < N; c++) {
            int len = 1;
            for (int r = 1; r < N; r++) {
                if (map[r][c] == map[r - 1][c]) len++;
                else {
                    maxColumn = Math.max(maxColumn, len);
                    len = 1;
                }
            }
            maxColumn = Math.max(maxColumn, len);
        }
        return maxColumn;
    }




    public static void swapCandy(char[][] map, int r1, int c1, int r2, int c2) {
        char temp = map[r1][c1];
      map[r1][c1] = map[r2][c2];
      map[r2][c2] = temp;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        char[][] map = new char[N][N];
        for (int i = 0; i < N; i++)
            map[i] = sc.next().toCharArray();

        int ans = 0;
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                //나는 반복문으로 상하좌우 4방향을 돌았으나,
                //이 풀이에서는 증가하는 방향(우, 하) 두 방향만 검증
                if (j + 1 < N && map[i][j] != map[i][j+1]) {
                    swapCandy(map, i, j, i, j+1);
                    ans = Math.max(ans, Math.max(findMaxColumn(map), findMaxRow(map)));
                    swapCandy(map, i, j, i, j+1);
                }

                if(i+1 < N && map[i][j] != map[i+1][j]) {
                    swapCandy(map, i, j, i+1, j);
                    ans = Math.max(ans, Math.max(findMaxColumn(map), findMaxRow(map)));
                    swapCandy(map, i, j, i+1, j);
                }
            }
        }
        System.out.println(ans);
    }
}