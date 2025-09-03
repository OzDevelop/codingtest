class Solution {
    public int solution(int[] numbers) {
//         int answer = 0;
//         boolean[] isExisted = new boolean[10];
//         for(int i=0; i<numbers.length; i++) {
//             isExisted[numbers[i]] = true;
//         }
        
//         for(int i=0; i<isExisted.length; i++) {
//             if(!isExisted[i]) answer += i;
//         }
//         return answer;
        int totalSum = 45;
        int sum = 0;
        for(int i: numbers) {
            sum += i;
        }
        return totalSum - sum;
    }
}