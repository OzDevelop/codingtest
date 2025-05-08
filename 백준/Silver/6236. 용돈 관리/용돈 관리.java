import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    static int N;
    static int M;
    static int[] budget;


    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String[] input = br.readLine().split(" ");
        N = Integer.parseInt(input[0]);
        M = Integer.parseInt(input[1]);

        budget = new int[N];
        for(int i = 0; i < N; i++) {
            budget[i] = Integer.parseInt(br.readLine());
        }
        System.out.println(getMinDrawMoney(budget));

    }

    private static int getMinDrawMoney(int[] budget) {
        int l = Arrays.stream(budget).max().getAsInt(), r = Arrays.stream(budget).sum();
        int ans = 0;

        while(l <= r) {
            int m = (l + r) / 2;

            if(isValid(m) <= M) {
                ans = m;
                r = m - 1;
            } else if (isValid(m)  > M)
                l = m + 1;

        }
        return ans;
    }

    private static int isValid(int m) {
        int sum = m, count = 1;

        for(int money: budget) {
            if (sum < money) {
                sum = 0;
                sum += m;
                count++;
            }
            sum -= money;
        }
        return count;
    }
}
