import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int T = Integer.parseInt(br.readLine());

        while(T-- > 0) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            int A = Integer.parseInt(st.nextToken());
            int B = Integer.parseInt(st.nextToken());
            int ans = 0;

            int[] N = new int[A];
            int[] M = new int[B];
            st = new StringTokenizer(br.readLine());
            for(int i=0; i<A; i++) {
                N[i] = Integer.parseInt(st.nextToken());
            }
            st = new StringTokenizer(br.readLine());
            for(int i=0; i<B; i++) {
                M[i] = Integer.parseInt(st.nextToken());
            }
            Arrays.sort(N);
            Arrays.sort(M);

            for(int i=0; i<A; i++) {
                int left = 0, right = M.length;
                while (left < right) {
                    int mid = (left + right) / 2;
                    if(M[mid] < N[i])
                        left = mid + 1;
                    else right = mid ;
                }

                ans += left;
            }

            System.out.println(ans);
        }

    }
}
