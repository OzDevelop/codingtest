import java.util.*;

class Solution {
    public String solution(String[] id_pw, String[][] db) {
        Map<String, String> map = new HashMap<>();
        for(String[] user: db) {
            map.put(user[0],user[1]);
        }
        
        String id = id_pw[0];
        String pw = id_pw[1];

        if (!map.containsKey(id)) return "fail";
        return pw.equals(map.get(id)) ? "login" : "wrong pw";

    }
}