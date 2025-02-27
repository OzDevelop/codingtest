import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String A = sc.next();
        String B = sc.next();
        sc.nextLine();
        
        int ans = A.length();

        for (int i = 0; i < B.length() - A.length() + 1; i++) {
            int tmp = 0;
            for (int j = 0; j < A.length(); j++) {
                if (A.charAt(j) != B.charAt(j + i)) {
                    tmp++;
                }
            }
            if (ans > tmp) {
                ans = tmp;
            }

        }
        System.out.println(ans);
    }
}