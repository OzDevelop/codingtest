import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while(true) {
            String n = sc.nextLine();

            if (n.equals("0")) break;
            StringBuilder sb = new StringBuilder(n);

            System.out.println(n.equals(sb.reverse().toString()) ? "yes" : "no");
        }
    }
}