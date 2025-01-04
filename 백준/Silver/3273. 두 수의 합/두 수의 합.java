import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int[] nums = new int[n];

        for(int i = 0; i < n; i ++) {
            nums[i] = sc.nextInt();
        }
        int x = sc.nextInt();

        boolean[] exists = new boolean[1_000_001];
        for (int i = 0; i < n; i++) {
            exists[nums[i]] = true;
        }

        int ans = 0;
        for(int i = 1; i <= (x - 1) / 2; i++) {
            if (i <= 1_000_000 && x - i <= 1_000_000)
                ans += (exists[i] && exists[x - i]) ? 1 : 0;
        }

        System.out.println(ans);

        /*
        -- 시간초과(O(N^2)) --

        int n = sc.nextInt();
        int[] nums = new int[n];

        for(int i = 0; i < n; i ++) {
            nums[i] = sc.nextInt();
        }

        int x = sc.nextInt();
        int cnt = 0;

        for(int i = 0; i < n; i ++) {
            for(int j = i + 1; j < n; j++) {
                if(nums[i] + nums[j] == x)
                    cnt++;
            }
        }
        System.out.println(cnt);
        */
    }
}