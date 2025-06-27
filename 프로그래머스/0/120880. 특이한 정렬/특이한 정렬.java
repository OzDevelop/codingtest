import java.util.*;

class Solution {
    public int[] solution(int[] numlist, int n) {
        Integer[] nums = Arrays.stream(numlist).boxed().toArray(Integer[]::new);

        Arrays.sort(nums, (a, b) -> {
            int diffA = Math.abs(a - n);
            int diffB = Math.abs(b - n);

            if (diffA == diffB) {
                return b - a; // 차이 같으면 더 큰 수 먼저
            }
            return diffA - diffB; // 차이 작은 순으로
        });

        return Arrays.stream(nums).mapToInt(Integer::intValue).toArray();
    }
}