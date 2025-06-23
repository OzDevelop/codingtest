import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        int ans = 0;
        int validNum = 0;

        char[] stick = br.readLine().toCharArray();

        for(int i =0; i< stick.length; i++) {
            if( stick[i] == '(') {
                validNum++;
            } else if (stick[i] == ')') {
                validNum--;
                if(stick[i-1] == '(') {
                    ans += validNum;
                } else {
                    ans += 1;
                }
            }

        }
        System.out.println(ans);
    }
}
