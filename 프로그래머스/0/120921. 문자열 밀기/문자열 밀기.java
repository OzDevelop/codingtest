import java.util.*;
class Solution {
    public static int solution(String A, String B) {
        if (A.length() != B.length()) return -1;

        for (int i = 0; i < A.length(); i++) {
            String rotated = A.substring(A.length() - i) + A.substring(0, A.length() - i);
            if (rotated.equals(B)) return i;
        }
        return -1;
    }
}