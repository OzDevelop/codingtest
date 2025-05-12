import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    static int[] required = new int[4]; // A, C, G, T
    static int[] current = new int[4];
    static int validCount = 0;

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        StringTokenizer st = new StringTokenizer(br.readLine());
        int S = Integer.parseInt(st.nextToken());
        int P = Integer.parseInt(st.nextToken());

        char[] dna = br.readLine().toCharArray();

        st = new StringTokenizer(br.readLine());
        for(int i = 0; i < 4; i ++) {
            required[i] = Integer.parseInt(st.nextToken());
        }

        for (int i = 0; i < P; i++) {
            add(dna[i]);
        }
        if (isValid()) validCount++;

        for (int i = P; i < S; i++) {
            add(dna[i]);
            remove(dna[i - P]);
            if (isValid()) validCount++;
        }

        System.out.println(validCount);
    }

    static void add(char c) {
        switch (c) {
            case 'A': current[0]++; break;
            case 'C': current[1]++; break;
            case 'G': current[2]++; break;
            case 'T': current[3]++; break;
        }
    }

    static void remove(char c) {
        switch (c) {
            case 'A': current[0]--; break;
            case 'C': current[1]--; break;
            case 'G': current[2]--; break;
            case 'T': current[3]--; break;
        }
    }

    static boolean isValid() {
        for (int i = 0; i < 4; i++) {
            if (current[i] < required[i]) return false;
        }
        return true;
    }
}
