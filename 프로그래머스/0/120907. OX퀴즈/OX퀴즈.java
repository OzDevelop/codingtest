class Solution {
    public String[] solution(String[] quiz) {
        String[] ans = new String[quiz.length];

        int cnt = 0;
        for (String q : quiz) {
            String[] qArr = q.split(" ");

            int X = Integer.parseInt(qArr[0]);
            int Y = Integer.parseInt(qArr[2]);
            int Z = Integer.parseInt(qArr[4]);
            String operand = qArr[1];

            int tmpAns = 0;

            if (operand.equals("+")) {
                tmpAns = X + Y;
            } else {
                tmpAns = X - Y;
            }

            ans[cnt] = tmpAns == Z ? "O" : "X";

            cnt++;
        }

        return ans;
    }
}