class Solution {
    public int solution(int i, int j, int k) {
        int answer = 0;

        String sk = String.valueOf(k);
        for(;i<=j;i++) {
            String [] tmpArr = String.valueOf(i).split("");
            for(String s : tmpArr) {
                if(s.equals(sk)) answer++;
            }
        }

        return answer;
    }
}