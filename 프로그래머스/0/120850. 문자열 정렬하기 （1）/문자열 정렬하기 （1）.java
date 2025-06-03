import java.util.*;

class Solution {
    public int[] solution(String my_string) {
        List<Integer> ansList = new ArrayList<>();

        char[] arr = my_string.toCharArray();

        for (char ch : arr) {
            if (Character.isDigit(ch)) {
                ansList.add(Character.getNumericValue(ch));
            }
        }
        
        Collections.sort(ansList);

        int[] answer = new int[ansList.size()];
        for (int i = 0; i < ansList.size(); i++) {
            answer[i] = ansList.get(i);
        }
        
//        ansList.stream().mapToInt(Integer::intValue).toArray();

        return answer;
    }
}