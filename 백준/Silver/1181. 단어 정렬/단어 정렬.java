
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
//        String[] words = new String[N];

        sc.nextLine();

        Set<String> wordSet = new HashSet<>(); // 중복 제거를 위한 Set 사용

        for (int i = 0; i < N; i++) {
            wordSet.add(sc.nextLine()); // 중복 제거
        }

//        Arrays.sort(words, new Comparator<String>() {
//            @Override
//            public int compare(String o1, String o2) {
//                if (o1.length() == o2.length()) {
//                    return o1.compareTo(o2);
//                }
//                return o1.length() - o2.length();
//
//            }
//        });

        List<String> words = new ArrayList<>(wordSet);
        words.sort((o1, o2) ->
                (o1.length() == o2.length()) ? o1.compareTo(o2) : o1.length() - o2.length()
        );

//        for(int i = 0; i < N; i++) {
//            System.out.println(words[i]);
//        }
        for (String word : words) {
            System.out.println(word);
        }
    }
}
