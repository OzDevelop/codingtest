import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String[] nm = br.readLine().split(" ");
        
        int N = Integer.parseInt(nm[0]);
        int M = Integer.parseInt(nm[1]);
        int[] arr = new int[N];
        int ans = Integer.MAX_VALUE;

        for(int i = 0; i<N; i ++) {
            arr[i] = Integer.parseInt(br.readLine());
        }

        Arrays.sort(arr);

        int left = 0, right = 0;
        while(right < N) {
             int diff = arr[right] - arr[left];

            if (diff < M) {
                right++;
            } else {
                ans = Math.min(ans, diff);
                left++;
            }
            
            if (left == right) right++;
        }

        System.out.println(ans);
    }
}
