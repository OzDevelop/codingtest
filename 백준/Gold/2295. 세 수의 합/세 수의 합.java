import java.util.Arrays;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Main {
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int[] arr = new int[N];
        for(int i = 0; i < N; i++) {
            arr[i] = sc.nextInt();
        }

        int ans = -1;
        //1.  A + B + C = K ==> A + B = K - C (시간복잡도를 줄이기 위해)
//        Set<Integer> sums = new HashSet<>();
        int[] sums = new int[N * (N + 1) / 2];
        int sumIndex = 0;
        for(int i = 0; i < N; i++) {
            for (int j = i; j < N; j++) {
//                sums.add(arr[i] + arr[j]);
                sums[sumIndex++] = arr[i] + arr[j];
            }
        }

        Arrays.sort(sums);

        for(int i = 0; i < N; i++) {
            for(int j = 0; j < N; j++) {
                int target = arr[i] - arr[j];
//                if(sums.contains(target))
                if(isExisted(sums, target))
                    ans = Math.max(ans, arr[i]);
            }
        }

        System.out.println(ans);
    }

    public static boolean isExisted(int[]arr, int key) {
        int l = 0, r = arr.length - 1;
        while(l <= r) {
            int m = (l + r) / 2;
            if (arr[m] < key) l = m + 1;
            else if (arr[m] > key) r = m - 1;
            else return true;
        }
        return false;
    }
}
