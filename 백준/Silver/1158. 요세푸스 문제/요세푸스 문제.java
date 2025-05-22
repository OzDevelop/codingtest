import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();

        String[] input = br.readLine().split(" ");
        int N = Integer.parseInt(input[0]);
        int K = Integer.parseInt(input[1]);
        List<Integer> table = new ArrayList<>();



        for(int i=0; i <N; i++) table.add(i + 1);

        int idx = 0;
        sb.append("<");
        while(!table.isEmpty()) {
            idx = (idx + K - 1) % table.size();
            sb.append(table.remove(idx));

            if(!table.isEmpty()) sb.append(", ");
        }
        sb.append(">");
        System.out.println(sb);

    }
}
