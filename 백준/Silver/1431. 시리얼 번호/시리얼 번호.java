import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        String[] serialNumbers = new String[N];

        for (int i = 0; i < N; i++) {
            serialNumbers[i] = sc.next();
        }
//        System.out.println(Arrays.toString(serialNumbers));

        Arrays.sort(serialNumbers, (o1, o2) -> {
            if (o1.length() != o2.length())
                return o1.length() - o2.length();
            if (getIntSum(o1) != getIntSum(o2))
                return getIntSum(o1) - getIntSum(o2);
            return o1.compareTo(o2);
        });

        for(int i=0; i<N; i++) {
            System.out.println(serialNumbers[i]);
        }
    }

    static int getIntSum(String s) {
        int sum = 0;
        for (char c : s.toCharArray()) {
            if (Character.isDigit(c)) {
                sum += c - '0';
            }
        }
        return sum;
    }
}
