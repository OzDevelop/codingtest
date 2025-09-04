class Solution {
    public int solution(int[] number) {
        int answer = 0;
        int numLen = number.length;
        for(int i=0; i< numLen; i++) {
            for(int j=i+1; j< numLen; j++) {
                for(int k=j+1; k< numLen; k++) {
                    if(number[i] + number[j] + number[k] == 0) answer++;
                    
                }
            }
        }
        
        return answer;
    }
}