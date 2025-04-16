import java.util.Arrays;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Main {
    public static boolean isExisted(String[] arr, String key) {
        int l = 0, r = arr.length - 1;
        while(l <= r) {
            int m = (l + r) / 2;
            int compareResult = arr[m].compareTo(key);
            if (compareResult < 0) l = m + 1;
            else if (compareResult > 0) r = m - 1;
            else return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();
        int ans = 0;

        String[] wordArr = new String[N];
        String [] compareArr = new String[M];

//        for(int i = 0; i < N; i++) {
//            compareArr[i] = sc.next();
//
//        }
//
//        for(int i = 0; i < M; i++) {
//            wordArr[i] = sc.next();
//        }
//
//        Arrays.sort(compareArr);
//
//        for(int i = 0; i < N; i++) {
//            if (Arrays.binarySearch(compareArr, wordArr[i]) >= 0)
//                ans++;
////            if (isExisted(compareArr, wordArr[i]))  ans++;
//        }

        Set<String> set = new HashSet<>();  // set을 이용한 풀이

        for (int i = 0; i < N; i++) set.add(sc.next());

        for (int i = 0; i < M; i++) {
            if (set.contains(sc.next())) ans++;
        }

        System.out.println(ans);
    }
}


