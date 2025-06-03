import java.util.*;
class Solution {
    public int[] solution(int n) {
        List<Integer> factors = new ArrayList<>();

        for (int i = 2; i <= n; i++) {
            if (n % i == 0 && isPrime(i)) {
                factors.add(i);
                while (n % i == 0) {
                    n /= i;
                }
            }
        }

        return factors.stream().mapToInt(Integer::intValue).toArray();
    }

    private boolean isPrime(int num) {
        if (num < 2) return false;
        for (int i = 2; i * i <= num; i++) {
            if (num % i == 0) return false;
        }
        return true;
    }

}