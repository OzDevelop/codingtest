import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        int[] arr = new int[N];

        for(int i = 0; i < N; i ++) {
            arr[i] = sc.nextInt();
        }
        Arrays.sort(arr);

        int  M = sc.nextInt();

        for(int i = 0; i < M; i ++) {
            int idx = Arrays.binarySearch(arr, sc.nextInt());
            System.out.println(idx >= 0 ? "1" : "0");
        }
    }

    boolean isExist(int[] arr, int x) {
        int l = 0, r = arr.length - 1;
        while(l <= r) {
            int m = (l + r) / 2;
            if (arr[m] < x) l = m+1;
            else if (arr[m] > x) r = m-1;
            else return true;
        }
        return false;
    }
}
