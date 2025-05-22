import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class Main {
    public static void main(String[] args)
    throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String str = br.readLine();
        int M = Integer.parseInt(br.readLine());

        List<Character> list = new LinkedList<>();
        for(char c: str.toCharArray()) list.add(c);

        ListIterator<Character> cursor = list.listIterator(list.size());

        while(M-- > 0) {
            String[] cmd = br.readLine().split(" ");

            switch (cmd[0]) {
                case "L":
                    if(cursor.hasPrevious()) cursor.previous();
                    break;
                case "D":
                    if (cursor.hasNext()) cursor.next();
                    break;
                case "B":
                    if (cursor.hasPrevious()) {
                        cursor.previous();
                        cursor.remove();
                    }
                    break;
                case "P":
                    char x = cmd[1].charAt(0);
                    cursor.add(x);
                    break;
            }
        }
        
        StringBuilder sb = new StringBuilder();
        for(char c : list) {
            sb.append(c);
        }

        System.out.println(sb.toString());



    }
}
