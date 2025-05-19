import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));


        int N = Integer.parseInt(br.readLine());
        char[] arr = br.readLine().toCharArray();
        int ans = 0;

        int[] count = new int[26];
        int kind = 0;
        int left = 0, right = 0;
        while (right < arr.length) {
            int r = arr[right] - 'a';
            if (count[r] == 0) kind++;
            count[r]++;
            right++;

            while (kind > N) {
                int l = arr[left] - 'a';
                count[l]--;
                if(count[l] == 0) kind--;
                left++;
            }

            ans = Math.max(ans, right-left);
        }
        System.out.println(ans);
    }
}
