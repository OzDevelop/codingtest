
import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;

public class Main {
    public static class userInfo {
        static Long count = 1L;
        Long id;
        int age;
        String name;

        public userInfo(int age, String name) {
            this.id = count++;
            this.age = age;
            this.name = name;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        userInfo[] user = new userInfo[N];

        for (int i = 0; i < N; i++) {
            int age = sc.nextInt();
            String name = sc.next();
            user[i] = new userInfo(age, name);
        }

        Arrays.sort(user, (o1, o2) -> {
            if (o1.age == o2.age) {
                return Long.compare(o1.id, o2.id);
            }
            return Integer.compare(o1.age, o2.age);
        });


        for (userInfo userInfo : user) {
            System.out.println(userInfo.age + " " + userInfo.name);
        }
    }
}
