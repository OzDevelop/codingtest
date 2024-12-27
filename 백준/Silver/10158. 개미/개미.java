import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int W = sc.nextInt();
        int H = sc.nextInt();
        int P = sc.nextInt();
        int Q = sc.nextInt();
        int T = sc.nextInt();

//        int timeX = T % (2 * W);
//        int timeY = T % (2 * H);
//
//        // 개미의 현재 위치
//        int currentX = P;
//        int currentY = Q;
//
//        // 진행 방향을 의미, 현재는 우측 상단(대각)을 향해 전진
//        int deltaX = 1;
//        int deltaY = 1;
//
//        while (timeX-- > 0) {
//            if (currentX == W) deltaX = -1;
//            else if (currentX == 0) deltaX = 1;
//            currentX += deltaX;
//        }
//
//        while (timeY-- > 0) {
//            if (currentY == H) deltaY = -1;
//            else if (currentY == 0) deltaY = 1;
//            currentY += deltaY;
//        }

        // 출발점을 0으로 바꾸어 시간복잡도를 줄일 수 있음.

        int currentX = (T + P) % (2 * W);
        int currentY = (T + Q) % (2 * H);

        if (currentX > W) currentX = 2 * W - currentX;
        if (currentY > H) currentY = 2 * H - currentY;

        System.out.println(currentX + " " + currentY);
    }
}