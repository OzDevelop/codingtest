class Solution {
    public int solution(int[] sides) {
        int count = 0;
        int maxSide = Math.max(sides[0], sides[1]);
        int shortSide = Math.min(sides[0], sides[1]);
        
        
        // 1. maxSide가 가장 긴 경우
        count += maxSide - (maxSide - shortSide);
        // 2. 다른 한변이 가장 긴 경우
        count += (maxSide + shortSide - 1) - maxSide;
        return count;
    }
}