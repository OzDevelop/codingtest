class Solution {
    public int[] solution(String[] keyinput, int[] board) {
        int[] answer = new int[]{0, 0};

        int maxX = board[0] / 2;
        int maxY = board[1] /2;

        for(int i=0; i<keyinput.length; i++) {
            String direction = keyinput[i];

            switch (direction) {
                case "left":
                    if (answer[0] - 1 >= -maxX) answer[0]--;
                    break;
                case "right":
                    if (answer[0] + 1 <= maxX) answer[0]++;
                    break;
                case "up":
                    if (answer[1] + 1 <= maxY) answer[1]++;
                    break;
                case "down":
                    if (answer[1] - 1 >= -maxY) answer[1]--;
                    break;
            }
        }
        return answer;
    }
}