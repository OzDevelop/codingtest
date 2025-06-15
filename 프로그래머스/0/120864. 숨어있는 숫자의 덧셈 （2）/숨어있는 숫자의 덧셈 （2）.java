class Solution {
    public int solution(String my_string) {
        int answer = 0;

        String tmpDigit = "";
        for(char c : my_string.toCharArray()) {
            if(Character.isDigit(c)) {
                tmpDigit += c;
            } else {
                if (!tmpDigit.isEmpty()) {
                    answer += Integer.parseInt(tmpDigit);
                    tmpDigit = "";
                }
            }
        }

        if (!tmpDigit.isEmpty()) {
            answer += Integer.parseInt(tmpDigit);
        }

        return answer;
    }
}