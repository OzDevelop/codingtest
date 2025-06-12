import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int caseCount = Integer.parseInt(br.readLine());

        while (caseCount-- > 0) {
            String[] NM = br.readLine().split(" ");
            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            StringTokenizer st = new StringTokenizer(br.readLine());
            List<Integer> priorities = new ArrayList<>();
            Queue<int[]> q = new LinkedList<>();

            for(int i=0; i<N; i++) {
                int priority = Integer.parseInt(st.nextToken());
                q.offer(new int[]{i, priority});
                priorities.add(priority);
            }

            priorities.sort(Comparator.reverseOrder());

            int order =0;
            int priorityIdx = 0;

            while(!q.isEmpty()) {
                int[] current = q.poll();

                if (current[1] == priorities.get(priorityIdx)) {
                    order++;
                    if (current[0] == M) {
                        System.out.println(order);
                        break;
                    }
                    priorityIdx++;
                } else {
                    q.offer(current);
                }
            }
        }
    }
}
