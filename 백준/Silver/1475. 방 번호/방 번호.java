import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String roomNum = br.readLine();
        int[] count = new int[10];

        for (char c : roomNum.toCharArray()) {
            int digit = c - '0';
            count[digit]++;
        }
        
        int sixNineCount = (count[6] + count[9] + 1) / 2;

        int max = sixNineCount;
        for (int i = 0; i < 10; i++) {
            if (i == 6 || i == 9) continue;
            max = Math.max(max, count[i]);
        }

        System.out.println(max);
    }
}
