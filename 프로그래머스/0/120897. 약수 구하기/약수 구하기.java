import java.util.*;
class Solution {
    public int[] solution(int n) {
        int sqrt = (int) Math.sqrt(n);
        ArrayList<Integer> arr = new ArrayList<>();

        for(int i = 1; i <= sqrt; i++){
            if(n % i == 0){
                arr.add(i);
                if(n / i != i){
                    arr.add(n / i);
                }
            }
        }
        arr.sort(Comparator.naturalOrder());

        return arr.stream().mapToInt(Integer::intValue).toArray();
    }
}