import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int T = Integer.parseInt(br.readLine());

        while (T-- > 0) {
            char[] word = br.readLine().toCharArray();

            int left = 0, right = word.length - 1;
            boolean printed = false;

            while (left < right) {
                if (word[left] != word[right]) {
                    if (isPalindrome(word, left + 1, right) || isPalindrome(word, left, right - 1)) {
                        System.out.println("1");
                    } else {
                        System.out.println("2");
                    }
                    printed = true;
                    break;

                }
                left++;
                right--;

            }
            if(!printed)
                System.out.println("0");
        }
    }

    public static boolean isPalindrome(char[] s, int left, int right) {
        while (left < right) {
            if(s[left++] != s[right--]) {
                return false;
            }
        }
        return true;
    }
}
