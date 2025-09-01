import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int ball = 1;

        while (n-- > 0) {
            int position1 = sc.nextInt();
            int position2 = sc.nextInt();
            if (position1 == ball) {
                ball = position2;
            } else if (position2 == ball) {
                ball = position1;
            }
        }
        System.out.println(ball);
        sc.close();
    }
}
