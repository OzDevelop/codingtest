import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {

    static int K;
    static int N;
    static int[] cables;

    static boolean isValid(long m) {
        if (m == 0) return false;
        long sum = 0;

        for (int cable : cables) {
            sum += cable / m;
        }
        return sum >= N;
    }

    static long getMaxCableLength(int[] cables) {
        long l = 1, r = Arrays.stream(cables).max().getAsInt();
        long ans = 0;

        while (l <= r) {
            long m = (l + r) / 2;

            if (isValid(m)) {
                ans = m;
                l = m + 1;
            } else {
                r = m - 1;
            }
        }
        return ans;
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String[] input = br.readLine().split(" ");
        K = Integer.parseInt(input[0]);
        N = Integer.parseInt(input[1]);

        cables = new int[K];
        for (int i = 0; i < K; i++) {
            cables[i] = Integer.parseInt(br.readLine());
        }

        System.out.println(getMaxCableLength(cables));
    }
}
