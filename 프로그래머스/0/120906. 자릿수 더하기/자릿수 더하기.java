class Solution {
    public int solution(int n) {
        String[] tmp = (n + "").split("");
        int ans =0;
        for (int i=0; i<tmp.length; i++) {
            ans += Integer.parseInt(tmp[i]);
        }
        return ans;
    }
}