class Solution {
    public int[] solution(int numer1, int denom1, int numer2, int denom2) {
        int denom = lcm(denom1, denom2);
        int numer =  numer1 * (denom / denom1) + numer2 * (denom / denom2);

        int gcd = gcd(numer, denom);
        return new int[]{numer / gcd, denom / gcd};
    }

    private static int gcd(int a, int b) {
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }
    public static int lcm(int a, int b) {
        return a * b / gcd(a, b);
    }
}
