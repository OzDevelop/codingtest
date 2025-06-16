class Solution {
    public int solution(int[][] board) {
        int answer = 0;

        int n = board.length;
        int m = board[0].length;
        boolean[][] danger = new boolean[n][m];

        int[] dx = {-1, -1, -1, 0, 0, 0, 1, 1, 1};
        int[] dy = {-1, 0, 1, -1, 0, 1, -1, 0, 1};

        for(int i = 0; i<n; i++) {
            for (int j = 0; j < m; j++) {
                if (board[i][j] == 1) {
                    for (int d = 0; d < 9; d++) {
                        int ni = i + dy[d];
                        int nj = j + dx[d];

                        if (ni >= 0 && ni < n && nj >= 0 && nj < m) {
                            danger[ni][nj] = true;

                        }
                    }
                }
            }
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (!danger[i][j]) {
                    answer++;
                }
            }
        }
        return answer;
    }
}