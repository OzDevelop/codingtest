import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int S1 = sc.nextInt();
        int S2 = sc.nextInt();
        int S3 = sc.nextInt();

//        System.out.println(S1 + " " + S2 + " " + S3);

        int[] countArr = new int[81];

        for (int i = 1; i <= S1; i ++) {
            for (int j = 1; j <= S2; j ++) {
                for (int k = 1; k <= S3; k ++) {
                    countArr[i+j+k]++;
                }
            }
        }

        int maxCount = 0;
        int ans = 0;
        for (int i = 0; i < countArr.length; i++) {
            if (countArr[i] > maxCount) {
                maxCount = countArr[i];
                ans = i;
            }
        }
//        System.out.println(Arrays.toString(countArr));
        System.out.println(ans);
    }
}
