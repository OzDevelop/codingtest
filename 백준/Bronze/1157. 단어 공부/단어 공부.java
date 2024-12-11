import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String word = sc.next().toUpperCase();

        int maxCount = -1;
        char maxAlphabet = '?';

        for(char alp = 'A'; alp <= 'Z'; alp++) {
            int count = getAlphabetCount(word, alp);
            if (count > maxCount) {
                maxCount = count;
                maxAlphabet = alp;
            } else if (count == maxCount) {
                maxAlphabet = '?';
            }
        }
        System.out.println(maxAlphabet);
    }

    public static int getAlphabetCount(String str, char alp) {
        int count = 0;
        for(int i=0; i< str.length(); i++) {
            if (alp == str.charAt(i)) count++;
        }
        return count;
    }
}