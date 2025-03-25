import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        List<int []> meetings = new ArrayList<>();

        for (int i = 0; i < N; i++) {
            int startTime = sc.nextInt();
            int endTime = sc.nextInt();

            meetings.add(new int[]{startTime, endTime});
        }

        meetings.sort((o1, o2) ->
                o1[1] == o2[1] ? o1[0] - o2[0] : o1[1] - o2[1] );

        int count = 0;
        int lastEndTime = 0;

        ;

        for(int[] meeting: meetings) {
            if (meeting[0] >= lastEndTime) {
                count++;
                lastEndTime = meeting[1];
            }
//            System.out.println(Arrays.toString(meeting));
        }
        System.out.println(count);
    }
}
