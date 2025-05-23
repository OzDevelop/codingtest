import java.util.Arrays;
import java.util.stream.IntStream;

class Solution {
    public int[] solution(int n) {
        int[] ansList = new int[n];

//        for(int i=0; i<n; i++) if(i % 2 == 1) ansList.add(i);
        ansList = IntStream.range(0, n + 1)
                .filter(i -> i % 2 == 1)
                .toArray();


        return ansList;
    }
}