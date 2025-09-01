import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int ans =0;
        int k = 1;

        while (n > 0) {
            if (n < k) {
                k = 1;
            }
            n -= k;
            k++;
            ans++;
        }
        System.out.println(ans);
    }
}