class Solution {
    public String solution(String s) {
        StringBuilder sb = new StringBuilder();
        String[] arr = s.split("");
        int midIdx = s.length() / 2;
        if(s.length() % 2 == 0) {
            sb.append(arr[midIdx - 1]).append(arr[midIdx]);
        } else {
            sb.append(arr[midIdx]);
        }
        
        return sb.toString();
    }
}