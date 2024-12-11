import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String firstWord = sc.next();
        String secondWord = sc.next();

        int[] countFirst = getAlphabetCount(firstWord);
        int[] countSecond = getAlphabetCount(secondWord);

        int ans = 0;

        for(int i=0; i<26; i++) {
            ans += Math.abs(countFirst[i] - countSecond[i]);
        }

        System.out.println(ans);
    }

    public static int[] getAlphabetCount(String str) {
        int[] count = new int[26];
        for(int i=0; i< str.length(); i++) {
            count[str.charAt(i) - 'a']++;
        }
        return count;
    }
}