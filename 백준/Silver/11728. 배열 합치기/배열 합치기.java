import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        int[] nArr = new int[N];
        int[] mArr = new int[M];

        st = new StringTokenizer(br.readLine());
        for(int i=0; i<N; i++)
            nArr[i] = Integer.parseInt(st.nextToken());

        st = new StringTokenizer(br.readLine());
        for(int i=0; i<M; i++)
            mArr[i] = Integer.parseInt(st.nextToken());

        StringBuilder sb = new StringBuilder();
        int left = 0, right = 0;

        while (left < N && right < M) {
            if (nArr[left] <= mArr[right]) {
                sb.append(nArr[left++]).append(" ");
            } else {
                sb.append(mArr[right++]).append(" ");
            }
        }
        while (left < N) sb.append(nArr[left++]).append(" ");
        while (right < M) sb.append(mArr[right++]).append(" ");

        System.out.println(sb.toString());
    }
}
