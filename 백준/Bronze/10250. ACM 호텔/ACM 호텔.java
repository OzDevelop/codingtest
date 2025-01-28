import java.util.Scanner;

// ACM 호텔
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

         /*
        nextInt()는 숫자만 읽고, 줄 바꿈문자는 버퍼에 남김.
        이후 scanner.nextLine()이 호출되면 줄바꿈문자만 읽어 빈 문자열이 반환되고,
        따라서 Integer.parseInt()가 빈 문자열을 처리하려고 하면서 NumberFormatException이 발생함.
         */
        int T = Integer.parseInt(scanner.nextLine()); // 테스트 케이스 수 입력
        int[] HWN = new int[3];

        for (int i = 0; i < T; i++) {
            StringBuilder ans = new StringBuilder();

            String[] input = scanner.nextLine().split(" ");
            
            int H = Integer.parseInt(input[0]); // 호텔 층 수
            int W = Integer.parseInt(input[1]); // 호텔 방 수
            int N = Integer.parseInt(input[2]); // 몇 번째 손님인지

            // 방 번호 계산
            int floor = (N % H == 0) ? H : N % H; // 층 번호
            int room = (N % H == 0) ? N / H : N / H + 1; // 호수 번호

            // 결과 출력
            System.out.printf("%d%02d%n", floor, room);
        }
    }
}
