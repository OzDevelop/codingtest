import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int C = sc.nextInt();
        Map<Integer, Integer> messageCount = new LinkedHashMap<>();

        for(int i = 0; i < N ; i ++) {
            int num = sc.nextInt();
            messageCount.put(num, messageCount.getOrDefault(num, 0) + 1);
        }

        List<Entry<Integer, Integer>> sortedList = new ArrayList<>(messageCount.entrySet());

        sortedList.sort((o1, o2) ->
                o2.getValue().compareTo(o1.getValue())
        );

        for (Map.Entry<Integer, Integer> entry : sortedList) {
            int key = entry.getKey();
            int value = entry.getValue();
            for (int i = 0; i < value; i++) {
                System.out.print(key + " ");
            }
        }
    }
}
