class Solution {
    public int solution(int[][] lines) {
        int answer = 0;
        int[] map = new int[201];

        for(int i=0; i<lines.length; i++) {
            for (int j=lines[i][0]; j < lines[i][1]; j++) {
                map[100+j]++;
            }
        }

        for(int i=0; i< map.length; i++) {
            if(map[i] >= 2) {
                answer++;
            }
        }

        return answer;
    }
}