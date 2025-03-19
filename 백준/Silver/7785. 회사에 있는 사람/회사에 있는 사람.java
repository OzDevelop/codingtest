import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();  // 로그에 기록된 출입기록 수
        Map<String, Integer> map = new HashMap<>();

        while (n-- > 0) {
            String name = sc.next();  // 사람 이름
            String status = sc.next();  // "enter" 또는 "leave"

            if (status.equals("enter")) {
                map.put(name, 1);  // 회사에 들어옴
            } else {
                map.remove(name);  // 회사에서 나감 (명단에서 삭제)
            }
        }

        // 회사에 남아있는 사람을 역순으로 정렬 후 출력
        List<String> result = new ArrayList<>(map.keySet());
        result.sort(Comparator.reverseOrder());

        for (String name : result) {
            System.out.println(name);
        }
    }
}
