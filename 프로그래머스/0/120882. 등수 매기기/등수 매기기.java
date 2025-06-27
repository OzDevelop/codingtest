import java.util.*;
class Solution {
    public int[] solution(int[][] score) {
        List<Integer> scoreList = new ArrayList<>();
        for(int[] t : score){
            scoreList.add(t[0] + t[1]);
        }
        scoreList.sort(Comparator.reverseOrder());

        int[] ans = new int[score.length];

        for(int i=0; i<score.length; i++) {
            ans[i] = scoreList.indexOf(score[i][0] + score[i][1])+1;
        }
        return ans;
    }

}