import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    static int N;
    static int C;
    static long[] point;

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        // 초기화
        String[] input = br.readLine().split(" ");
        N = Integer.parseInt(input[0]);
        C = Integer.parseInt(input[1]);

        point = new long[N];
        for (int i = 0; i < N; i++) {
            point[i] = Integer.parseInt(br.readLine());
        }

        // 정렬
        Arrays.sort(point);

        System.out.println(getMaxDistance(point));
    }

    private static long getMaxDistance(long[] point) {
        long l = 1, r = point[N-1] - point[0];
        long ans = 0;
        
        while(l <= r) {
            long m = (l + r) / 2;
            
            if (isInstallable(m)) {
                ans = m;
                l = m + 1;
            } else {
                r = m - 1;
            }
        }
        return ans;
    }

    private static boolean isInstallable(long m) {
        long lastInstalled = point[0];
        int count = 1;
        
        for(int i = 1; i < N; i++) {
            if (point[i] - lastInstalled >= m) {
                count++;
                lastInstalled = point[i];
            }
        }
        return  count >= C;
    }
}
