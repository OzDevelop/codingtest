class Solution {
    public int solution(int[][] dots) {
        int width = Math.max(Math.abs(dots[2][0] - dots[0][0]), Math.abs(dots[3][0] - dots[0][0])) ;
        int height = Math.max(Math.abs(dots[2][1] - dots[0][1]), Math.abs(dots[3][1] - dots[0][1])) ;

        return width * height;
    }
}