
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.Queue;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());
        int bufferCount = 0;
        Queue<Integer> q = new LinkedList<>();

        while(true) {
            if(bufferCount == 5) continue;

            int info = Integer.parseInt(br.readLine());

            if (info == -1) {
                break;
            } else if (info == 0) {
                if (!q.isEmpty()) q.poll();
            } else {
                if (q.size() < N) {
                    q.offer(info);
                }
            }
        }
        if (q.isEmpty()) {
            System.out.println("empty");
        } else {
            // 공백으로 구분된 출력
            StringBuilder sb = new StringBuilder();
            for (int num : q) {
                sb.append(num).append(" ");
            }
            System.out.println(sb.toString().trim());
        }
    }
}
