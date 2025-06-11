class Solution {
    public int solution(int num, int k) {
        int ans = -1;
        String[] arr = String.valueOf(num).split("");

        for(int i=0; i< arr.length; i++) {
            if (arr[i].equals(String.valueOf(k))) {
                ans = i + 1;
                break;
            }
        }

//        String str = String.valueOf(num);
//        int idx = str.indexOf(String.valueOf(k));
//        return idx == -1 ? -1 : idx + 1;
        
        return ans;
    }
}