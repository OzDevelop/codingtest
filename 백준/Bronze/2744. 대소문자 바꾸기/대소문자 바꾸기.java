
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();

        for(int i=0; i < input.length(); i ++) {
            char ch = input.charAt(i);
            if ('A' <= ch && ch <= 'Z') {
                System.out.print((char)('a' + ch - 'A'));
            } else {
                System.out.print((char)('A' + ch - 'a'));
            }
        }
    }
}