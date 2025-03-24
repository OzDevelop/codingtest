
import java.util.Arrays;
import java.util.HashMap;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int N = scanner.nextInt();
        int[] numbers = new int[N];
        int[] sorted = new int[N];

        for(int i = 0; i < N; i++) {
            numbers[i] = scanner.nextInt();
            sorted[i] = numbers[i];
        }

        Arrays.sort(sorted);

        HashMap<Integer, Integer> map = new HashMap<>();
        int rank = 0;

        for(int num : sorted) {
            if (!map.containsKey(num)) {
                map.put(num, rank++);
            }
        }

        StringBuilder sb = new StringBuilder();
        for(int num : numbers) {
            sb.append(map.get(num)).append(" ");
        }

        System.out.println(sb.toString().trim());
    }
}
