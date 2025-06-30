class Solution {
    public int solution(String[] babbling) {
        String[] pron = {"aya", "ye", "woo", "ma"};
        int answer = 0;
        for(String s : babbling) {
            for(String p : pron) {
                s = s.replace(p, " ");
            }
            if (s.trim().isEmpty()) {
                answer++;
            }
        }
        return answer;
    }
}