
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class Solution {
    public int[] solution(int[] numbers, String direction) {
        List<Integer> tempList = Arrays.stream(numbers)
            .boxed()
            .collect(Collectors.toList());
        
        if (direction.equals("right")) {
            int last = tempList.remove(tempList.size() - 1);
            tempList.add(0, last);
        } else if (direction.equals("left")) {
            int first = tempList.remove(0); 
            tempList.add(first); 
        }

        return tempList.stream().mapToInt(Integer::intValue).toArray();
    }
}