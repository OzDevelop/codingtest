import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        int N = Integer.parseInt(st.nextToken()), B = Integer.parseInt(st.nextToken()), W = Integer.parseInt(
                st.nextToken());
        int ans = 0; // 가장 긴 길이

        st = new StringTokenizer(br.readLine());
        char[] load = st.nextToken().toCharArray();
        
        int left = 0, right = 0;
        int BCnt = 0, WCnt = 0;
        while (right < N) {
            // 조건 1. 까만색 조약돌을 B개 이하로 줍기.
            // 조건 2. 힌색 조약돌을 W개 이상 줍기
            if (load[right] == 'W') {
                WCnt++;
            } else {
                BCnt++;
            }
            right++;

            while (BCnt > B) {
                if (load[left] == 'W') {
                    WCnt--;
                } else {
                    BCnt--;
                }
                left++;
            }

            if (WCnt >= W && BCnt <= B)
                ans = Math.max(ans, right - left);
        }
        System.out.println(ans);
    }
}