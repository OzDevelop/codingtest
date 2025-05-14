import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());
        int[] distance = new int[N];
        int distanceSum = 0;
        int ans = 0;

        for(int i=0; i<N; i++) {
            distance[i] = Integer.parseInt(br.readLine());
            distanceSum += distance[i];
        }

        /**
         * pairIndex - 경계 index
         * distClockWise - 시계방향 거리 합
         * distCounterClockWise - 반시계방향 거리 합
         */
        int pairIndex = 0;
        int distClockWise = 0;
        int distCounterClockWise = distanceSum;
        for (int i=0; i<N; i++) {
            while(distClockWise < distCounterClockWise) {
                distClockWise += distance[pairIndex];
                distCounterClockWise -= distance[pairIndex];
                pairIndex = (pairIndex + 1) % N;
            }
            ans = Math.max(ans, distCounterClockWise);

            distClockWise -= distance[i];
            distCounterClockWise += distance[i];
        }

        System.out.println(ans);
    }
}
