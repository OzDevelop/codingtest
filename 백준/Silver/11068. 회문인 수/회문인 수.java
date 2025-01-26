import java.util.Scanner;

public class Main {
    public static String changeBase(int number, int baseNumber) {
        StringBuilder result = new StringBuilder();
        while (number > 0) {
            int digit = number % baseNumber;
            if (digit < 10) result.append(digit);
            else result.append((char)('A' + (digit - 10)));
            number /= baseNumber;
        }
        return result.reverse().toString();
    }

    public static boolean isPalindrome(String str) {
        int len = str.length();
        for (int i = 0; i < len / 2; i++) {
            if (str.charAt(i) != str.charAt(len - 1 - i)) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int T = scanner.nextInt(); // testcase

        while (T-- > 0) {
            int number = scanner.nextInt();
            boolean foundPalindrome = false; // B진법 반복시 회문인수 발견하면 flag 변경

            for (int base = 2; base <= 64; base++) {
                String baseNumber = changeBase(number, base);

                if (isPalindrome(baseNumber)) {
                    foundPalindrome = true;
                    break;
                }
            }
            System.out.println(foundPalindrome ? "1" : "0");
        }
    }
}