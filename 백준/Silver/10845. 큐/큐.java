import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.LinkedList;
import java.util.Queue;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());

        Queue<Integer> q = new LinkedList<>();
        int lastValue = -1; // back 연산을 위한 마지막으로 push된 값 저장용

        while (N-- > 0) {
            String[] cmd = br.readLine().split(" "); // 명령어 입력 분리

            switch (cmd[0]) {
                case "push":
                    lastValue = Integer.parseInt(cmd[1]); // 마지막 push 값 저장
                    q.offer(lastValue); // 큐에 추가
                    break;
                case "pop":
                    bw.write((q.isEmpty() ? -1 : q.poll()) + "\n");
                    break;
                case "size":
                    bw.write(q.size() + "\n");
                    break;
                case "empty":
                    bw.write((q.isEmpty() ? 1 : 0) + "\n");
                    break;
                case "front":
                    bw.write((q.isEmpty() ? -1 : q.peek()) + "\n");
                    break;
                case "back":
                    bw.write((q.isEmpty() ? -1 : lastValue) + "\n");
                    break;
            }
        }

        bw.flush();
        bw.close();
        br.close();
    }
}