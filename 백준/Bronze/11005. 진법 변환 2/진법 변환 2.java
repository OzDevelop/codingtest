import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
    
        Scanner scanner = new Scanner(System.in);

        int A = scanner.nextInt();
        int B = scanner.nextInt();

        int tmp = A;
        StringBuilder ans = new StringBuilder();

        while (tmp > 0) {
            int remainder = tmp % B;
            
            if (remainder >= 10) {
                ans.append((char)(remainder - 10 + 'A'));
            } else {
                ans.append(remainder);
            }
            
            tmp /= B;
        }
        System.out.println(ans.reverse());
    }
}