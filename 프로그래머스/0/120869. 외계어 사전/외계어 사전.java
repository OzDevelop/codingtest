class Solution {
    public int solution(String[] spell, String[] dic) {
        int answer;

        for(String word : dic) {
            boolean isPossible = true;
            for(String s: spell) {
                if(!word.contains(s)) {
                    isPossible = false;
                    break;
                }
            }
            if (isPossible) {
                return 1;
            }
        }

        return 2;
    }
}