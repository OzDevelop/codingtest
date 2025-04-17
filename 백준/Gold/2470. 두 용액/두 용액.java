import java.util.Arrays;
import java.util.Scanner;

public class Main {
    static int findOptimalPair(int[] arr, int fromIndex, int toIndex, int value ) {
        int optimalPairValue = arr[fromIndex];
        int optimalAbs = Math.abs(value + optimalPairValue);
        int l = fromIndex + 1, r = toIndex;
        while (l <= r ) {
            int m = (l + r) / 2;
            int sum = value + arr[m];
            int sumAbs = Math.abs(sum);
            if(sumAbs < optimalAbs) {
                optimalPairValue = arr[m];
                optimalAbs = sumAbs;
            }
            if(sum < 0) l = m + 1;
            else if(sum > 0) r = m - 1;
            else return arr[m];
        }
        return optimalPairValue;
    }

    public static void main(String[] args) {
        // 두 개의 서로다른 용액을 혼합에 0에 가까운 숫자를 만들자.
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int[] arr = new int[N];

        for(int i = 0; i < N; i++) {
            arr[i] = sc.nextInt();
        }
        Arrays.sort(arr);

        int[] ans = {arr[0], arr[1]};
        int ansAbs = Math.abs(arr[0] + arr[1]);

        for(int i = 0; i < N - 1; i ++) {
            int pairValue = findOptimalPair(arr, i + 1, N - 1, arr[i]);

            int sumAbs = Math.abs(arr[i] + pairValue);

            if(ansAbs > sumAbs) {
                ansAbs = sumAbs;
                ans[0] = arr[i];
                ans[1] = pairValue;
            }
        }

        System.out.println(ans[0] + " " + ans[1]);
    }
}
