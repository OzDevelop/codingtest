class Solution {
    public String solution(String phone_number) {
        StringBuilder sb = new StringBuilder();
        String[] arr = phone_number.split("");
        for(int i=0; i < arr.length; i++) {
            
            if(arr.length - i - 1 < 4) {
                sb.append(arr[i]);
            } else {
            sb.append("*");    
            }
        }
        return sb.toString();
    }
}