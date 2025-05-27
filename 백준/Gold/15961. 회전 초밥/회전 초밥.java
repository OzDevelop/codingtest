import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    /**
     *  벨트위에 초밥은 같은 종류가 둘 이상 있을 수 있음.
     * 1. 임의의 위치부터 k개의 초밥을 연속해 먹을 경우 할인된 가격으로 제공.
     * 2. 초밥 종류가 쓰인 쿠폰 발행, 행사에 참여할 경우 해당 초밥 무료 제공
     *
     * 가능한 한 다양한 초밥 먹으려 함.
     * 손님이 최대 먹을 수 있는 초밥 가지 수
     */

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        // 변수 초기화
        int N = Integer.parseInt(st.nextToken()); // 접시 수
        int d = Integer.parseInt(st.nextToken()); // 초밥 가짓 수
        int k = Integer.parseInt(st.nextToken()); // 연속해서 먹는 접시 수
        int c = Integer.parseInt(st.nextToken()); // 쿠폰 번호
        int[] sushi = new int[N];
        for(int i=0; i <N; i++) {
            sushi[i] = Integer.parseInt(br.readLine());
        }

        int[] count = new int[d + 1];
        int kind = 0; // 현재 서로 다른 초밥 종류 수
        int max = 0;

        for (int i = 0; i < k; i++) {
            if (count[sushi[i]] == 0) kind++;
            count[sushi[i]]++;
        }
        
        for (int i = 0; i < N; i++) {
            int currentMax = kind;
            if (count[c] == 0) currentMax++;
            max = Math.max(max, currentMax);

            int left = sushi[i];
            count[left]--;
            if (count[left] == 0) kind--;

            int right = sushi[(i + k) % N];
            if (count[right] == 0) kind++;
            count[right]++;
        }
        
        System.out.println(max);
    }
}
