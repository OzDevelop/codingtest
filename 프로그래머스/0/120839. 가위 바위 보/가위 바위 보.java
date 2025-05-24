class Solution {
    public String solution(String rsp) {
        String answer = "";
        String[] arr = rsp.split("");

        for(String a : arr) {
            System.out.println(a);
            if (a.equals("2")) answer += "0";
             else if (a.equals("0")) answer += "5";
             else answer += "2";
        }
        return answer;
    }
}