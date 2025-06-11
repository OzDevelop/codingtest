import java.util.*;

class Solution {
    public int[] solution(int[] array) {
        int[] answer = new int[2];
        int max = array[0];
        int maxIdx = 0;

        for(int i=0; i< array.length; i++) {
            if (array[i] > max) {
                max = array[i];
                maxIdx = i;
            }
        }

        answer[0] = max;
        answer[1] = maxIdx;

        return answer;
    }
}