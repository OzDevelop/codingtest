class Solution {
    public String solution(String s, int n) {
        StringBuilder sb = new StringBuilder();
        
        for(char c : s.toCharArray()) {
            if (c >= 'A' && c <= 'Z') {
                char temp = (char)('A'+ (c - 'A' +n) % 26);
                sb.append(temp);
            } else if (c >= 'a' && c <= 'z') {
                char shifted = (char)('a' + (c - 'a' + n) % 26);
                sb.append(shifted);
            } else {
                sb.append(c);
            }
        }
        
        return sb.toString();
    }
}