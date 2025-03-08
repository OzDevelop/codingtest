
import java.util.Arrays;
import java.util.Scanner;

// Comparator 대신 Comparable을 구현해 사용
public class Main {
    static class Member implements Comparable<Member> {
        int age;
        String name;
        int idx;

        public Member(int age, String name, int idx) {
            this.age = age;
            this.name = name;
            this.idx = idx;
        }

        @Override
        public int compareTo(Member o) {
            if (this.age != o.age) {
                return age - o.age;
            }
            return idx - o.idx;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        Member[] members = new Member[N];

        for (int i = 0; i < N; i++) {
            int age = sc.nextInt();
            String name = sc.next();
            members[i] = new Member(age, name, i);
        }

//        Arrays.sort(members, (o1, o2) -> {
//            if (o1.age == o2.age) {
//                return Long.compare(o1.idx, o2.idx);  // id를 기준으로 정렬
//            }
//            return Integer.compare(o1.age, o2.age);  // 나이를 기준으로 오름차순 정렬
//        });

        Arrays.sort(members);

        for (Member Member : members) {
            System.out.println(Member.age + " " + Member.name);
        }
    }
}
