import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
 import java.util.Map;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());
        int[][] fans = new int[N][2];

        for (int i = 0; i < N; i++) {
            String[] input = br.readLine().split(" ");
            int gender = input[0].equals("0") ? -1 : 1;  // 남자: -1, 여자: +1
            int x = Integer.parseInt(input[1]);
            fans[i][0] = gender;
            fans[i][1] = x;
        }

        Arrays.sort(fans, Comparator.comparing(a -> a[1]));

        int[] prefixSum = new int[N + 1];
        Map<Integer, Integer> sumIndexMap = new HashMap<>();
        sumIndexMap.put(0, 0);

        int maxLen = 0;
        for (int i = 1; i <= N; i++) {
            prefixSum[i] = prefixSum[i - 1] + fans[i - 1][0];

            if (sumIndexMap.containsKey(prefixSum[i])) {
                int startIdx = sumIndexMap.get(prefixSum[i]);
                int len = fans[i - 1][1] - fans[startIdx][1];
                maxLen = Math.max(maxLen, len);
            } else {
                sumIndexMap.put(prefixSum[i], i);
            }
        }

        System.out.println(maxLen);
    }
}
