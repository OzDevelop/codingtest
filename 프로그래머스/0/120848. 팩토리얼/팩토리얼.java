class Solution {
    public int solution(int n) {
        int answer = 1;
        int count =1;

        while (true) {
            answer *= count;
            if (answer > n) break;
            count++;

        }
        return count - 1;
    }
}