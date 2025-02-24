import java.util.Scanner;

// 진법 변환
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String number = sc.next();
        int N = sc.nextInt();

        int ans = 0;
        for (int i = 0; i < number.length(); i++) {
            char ch = number.charAt(i);
            int value;

            if (Character.isDigit(ch)) { // 0 - 9 라면
                value = ch - '0';
            } else {
                value = ch - 'A' + 10;
            }

            ans += value * Math.pow(N, number.length() -1 - i);
        }
        System.out.println(ans);
    }
}