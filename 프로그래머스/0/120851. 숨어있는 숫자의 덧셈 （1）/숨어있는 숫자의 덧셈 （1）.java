import java.util.*;
class Solution {
    public int solution(String my_string) {
        
        List<Integer> ansList = new ArrayList<>();
        char[] arr = my_string.toCharArray();
        
        for(char ch: arr) {
            if (Character.isDigit(ch)) {
                ansList.add(Character.getNumericValue(ch));
            }
        }
        
        return ansList.stream().mapToInt(Integer::intValue).sum();
    }
}