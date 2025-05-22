import java.util.Arrays;

class Solution {
    public int solution(int[] array) {
        int maxVal = Arrays.stream(array).max().getAsInt();

        int[] cnt = new int[maxVal + 1];
        for (int num : array) {
            cnt[num]++;
        }

        System.out.println(Arrays.toString(cnt));

        int max = 0;
        int ans = 0;

        for (int i = 0; i < cnt.length; i++) {
            if (cnt[i] > max) {
                max = cnt[i];
                ans = i;
            } else if (cnt[i] == max) {
                ans = -1;
            }
        }

        return ans;
    }
}