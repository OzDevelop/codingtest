
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader((System.in)));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int T = Integer.parseInt(br.readLine());
        while (T-- > 0){
            String[] nums = br.readLine().split(" ");
            int A = Integer.parseInt(nums[0]);
            int B = Integer.parseInt(nums[1]);

            bw.write(A + B + "\n");
        }
    bw.flush();
    }
}