import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Map<Character, Integer> hex = new HashMap<>();
        int ans = 0;
        
        String s = sc.nextLine();

        char hexAlphabet = 'A';
        for (int i = 0; i < 6; i++) {
            hex.put((char)('A' + i), 10 + i);
        }

        for(int i=0; i<s.length(); i++) {
            char c = s.charAt(i);
            int num = s.length() - i - 1;
            if (hex.containsKey(c)) {
                ans += hex.get(c) * Math.pow(16, num);
            } else {
                ans += Integer.parseInt(String.valueOf(c)) * Math.pow(16, num);
            }
        }
        System.out.println(ans);
    }
}