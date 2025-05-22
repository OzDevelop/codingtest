class Solution {
    public int solution(int n) {
        int answer = 1;
        int count = 1;
        while (true) {
            if (Math.pow(count, 2) < n) count++;
            else if (Math.pow(count, 2) == n) {
                break;
            } else {
                answer = 2;
                break;
            }
        }
        return answer;
    }
}