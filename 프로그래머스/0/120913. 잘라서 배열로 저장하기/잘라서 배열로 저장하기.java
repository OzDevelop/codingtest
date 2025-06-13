import java.util.*;

class Solution {
    public String[] solution(String my_str, int n) {
        List<String > ans = new ArrayList<>();
        String[] splitArr = my_str.split("");

        StringBuilder sb = new StringBuilder();
        for(int i=0; i<splitArr.length;i += n) {
            int end = Math.min(i + n, my_str.length()); // 범위 초과 방지
            ans.add(my_str.substring(i, end));
        }
        return ans.toArray(new String[0]);
    }
}