import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    static int N;
    static long M;
    static int[] trees;

    // 현재 높이로 충분한지
    static boolean isVaild(long height) {
        long sum = 0;
        for(int tree : trees) {
            if(tree > height) {
                sum += tree - height;
            }
        }
        return sum >= M;
    }

    //최대 높이
    static long getMaxHeight(int[] trees, long M) {
        long l = 0;
        long r = Arrays.stream(trees).max().getAsInt();
        long result = 0;

        while (l <= r) {
            long m = (l + r) / 2;

            if(isVaild(m)) {
                result = m;
                l = m + 1;
            } else {
                r = m - 1;
            }
        }
        return result;
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        N = Integer.parseInt(st.nextToken());
        M = Integer.parseInt(st.nextToken());
        trees = new int[N];

        st = new StringTokenizer(br.readLine());
        for(int i = 0; i < N; i++) {
            trees[i] = Integer.parseInt(st.nextToken());
        }
        System.out.println(getMaxHeight(trees, M));
    }
}
