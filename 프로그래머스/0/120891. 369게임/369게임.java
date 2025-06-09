class Solution {
    public int solution(int order) {
        int answer = 0;
        String str = String.valueOf(order);
        int[] digits = new int[str.length()];

        for (int i = 0; i < str.length(); i++) {
            digits[i] = str.charAt(i) - '0';
        }
        
        for(int num : digits) {
            if (num == 3 || num == 6 || num == 9) {
                answer++;
            }
        }

        return answer;
    }
}