import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;


public class Main {

    static long calcIntegerSqrt(long x) {
        if (x == 0) return 0;

        long l = 1, r = 1L << 32, sqrt = -1;
        while(l <= r) {
            long m = (r + l) / 2;
            if (m >= (x - 1) / m + 1) {
                r = m - 1;
                sqrt = m;
            } else l = m + 1;
        }
        return sqrt;
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();

        long n = Long.parseLong(br.readLine());

        sb.append(calcIntegerSqrt(n));

        System.out.println(sb);
    }
}
