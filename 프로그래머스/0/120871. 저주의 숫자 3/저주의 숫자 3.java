class Solution {
    public int solution(int n) {
        int cnt = 0;
        int ans = 0;
        while (cnt < n) {
            ans++;
            if(ans % 3 ==0 || String.valueOf(ans).contains("3")) {
                continue;
            }
            cnt++;
        }
        return ans;
    }
}