import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int count = 0;
        while(true) {
            String n = sc.nextLine();
            if (n.equals("#")) break;

            for (char c : n.toCharArray()) {
                c = Character.toLowerCase(c);
                if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                    count++;
                }

            }
            System.out.println(count);
            count = 0;
        }
    }
}
