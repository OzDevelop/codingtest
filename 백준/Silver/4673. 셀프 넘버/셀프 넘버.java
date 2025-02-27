import java.util.Arrays;
import java.util.Scanner;

public class Main {
    static final int NUMBER = 10_001;

    public static void main(String[] args) {
        boolean[] check = new boolean[NUMBER];

        for(int i = 1; i < NUMBER; i++) {
            int n = d(i);
            if (n < NUMBER) {
                check[n] = true;
            }
        }

        for (int i = 1; i < NUMBER; i++) {
            if (!check[i]) {
                System.out.println(i);
            }
        }
    }

    public static int d(int number) {
        int sum = number;

        while(number != 0){
            sum = sum + number % 10;
            number = number / 10;
        }
        return sum;
    }
}
