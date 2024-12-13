import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String doc = sc.nextLine();
        String word = sc.nextLine();

//        int startIdx = 0;
//        int ans = 0;
//
//        while (true) {
//            int findIdx = doc.indexOf(word, startIdx);
//
//            if (findIdx < 0)
//                break;
//            startIdx = word.length() + findIdx;
//            ans++;
//        }
//        System.out.println(ans);

        // 또 다른 방법
        /*
        doc - aaaaaaaa
        word - aaa 라고 가정
        doc에서 최대한 많은 word를 제거하면 2문자만 남음(aa)
        이게 우리가 구하는 doc에 포함된 word 개수임
        왜냐면 길이가 3짜리인 word가 두 번 등장했다는 뜻이니까
         */

        String replaced = doc.replace(word, "");
        int length = doc.length() - replaced.length();
        int count = length / word.length();
        
        System.out.println(count);

    }
}