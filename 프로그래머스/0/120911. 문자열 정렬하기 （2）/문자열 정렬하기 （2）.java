import java.util.*;

class Solution {
    public String solution(String my_string) {
        List<String> ansList = new ArrayList<>();

        for(Character c : my_string.toCharArray()) {
                ansList.add(String.valueOf(Character.toLowerCase(c)));
        }
        ansList.sort(Comparator.naturalOrder());
        StringBuilder sb = new StringBuilder();
        for (String s : ansList) {
            sb.append(s);
        }

        return sb.toString();
    }
}