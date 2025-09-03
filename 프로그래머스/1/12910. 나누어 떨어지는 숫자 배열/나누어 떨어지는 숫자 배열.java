import java.util.ArrayList;
import java.util.Arrays;


class Solution {
    public int[] solution(int[] arr, int divisor) {
        ArrayList<Integer> list = new ArrayList<>();


        for(int num : arr) {
            if(num % divisor == 0) {
                list.add(num);
            }
        }
        if(list.isEmpty()) {
            list.add(-1);
        }

        int[] ansArr = new int[list.size()];

        for(int i=0; i<list.size(); i++) {
            ansArr[i] = list.get(i);
        }
        Arrays.sort(ansArr);
        return ansArr;
    }
}