class Solution {
    public int solution(int n) {
        int count = 1;
        int ans = 0;
        while (true) {
            if ((n * count) % 6 == 0) {
                ans =(n * count) / 6;
                break;
            }
            count++;
        }


        return ans;
    }
}