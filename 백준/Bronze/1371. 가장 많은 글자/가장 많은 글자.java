import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StringBuilder sb = new StringBuilder();
        int[] alphabet = new int[26];

        while (sc.hasNextLine()) {
            String s = sc.nextLine();

            for (char c : s.toCharArray()) {
                if (c >= 'a' && c <= 'z') {
                    alphabet[c - 'a']++;
                }
            }
        }

        int maxIdx = 0;
        for(int i = 0; i < alphabet.length; i++){
            if(alphabet[i] > maxIdx){
                maxIdx = alphabet[i];
            }
        }

        for(int i = 0; i < alphabet.length; i++){
            if(alphabet[i] == maxIdx) sb.append((char)(i + 'a'));
        }

        System.out.println(sb.toString());
    }
}