import java.util.*;

class Solution {
    public String solution(String polynomial) {
       String[] splitArr = polynomial.split(" ");

        int countX = 0;
        int constant = 0;

        for (String s : splitArr) {
            if (s.equals("+")) continue;

            if (s.contains("x")) {
                String coeff = s.replace("x", "");
                if (coeff.equals("")) {
                    countX += 1;
                } else {
                    countX += Integer.parseInt(coeff);
                }
            } else {
                constant += Integer.parseInt(s);
            }
        }

        StringBuilder sb = new StringBuilder();
        if (countX > 0) {
            if (countX == 1) sb.append("x");
            else sb.append(countX).append("x");
        }
        if (constant > 0) {
            if (countX > 0) sb.append(" + ");
            sb.append(constant);
        }

        return sb.toString();
    }
}