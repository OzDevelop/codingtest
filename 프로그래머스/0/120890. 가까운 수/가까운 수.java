class Solution {
    public int solution(int[] array, int n) {
        int answer = 0;
        int min = 100;
        for(int i=0; i < array.length; i++) {
            int diff = Math.abs(array[i] - n);

            if (min > diff) {
                min = diff;
                answer = array[i];
            }
            else if (diff == min && array[i] < answer) {
                answer = array[i];
            }
        }

        return answer;
    }
}