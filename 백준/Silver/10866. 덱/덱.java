import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.List;
import java.util.Deque;

public class Main {
    public static Deque<Integer> listDeque = new LinkedList<>();

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());

        while (N-- > 0) {
            String[] command = br.readLine().split(" ");

            switch (command[0]) {
                case "push_front":
                    push_front(Integer.parseInt(command[1]));
                    break;
                case "push_back":
                    push_back(Integer.parseInt(command[1]));
                    break;
                case "pop_front":
                    pop_front();
                    break;
                case "pop_back":
                    pop_back();
                    break;
                case "size":
                    size();
                    break;
                case "empty":
                    empty();
                    break;
                case "front":
                    front();
                    break;
                case "back":
                    back();
                    break;
            }
        }
    }

    public static void push_front(int x) {
        listDeque.addFirst(x);
    }

    public static void push_back(int x) {
        listDeque.addLast(x);
    }

    public static void pop_front() {
        if (listDeque.isEmpty()) {
            System.out.println(-1);
        } else {
            System.out.println(listDeque.removeFirst());
        }
    }

    public static void pop_back() {
        if (listDeque.isEmpty()) {
            System.out.println(-1);
        } else {
            System.out.println(listDeque.removeLast());
        }
    }

    public static void size() {
        System.out.println(listDeque.size());
    }

    public static void empty() {
        System.out.println(listDeque.isEmpty() ? 1 : 0);
    }

    public static void front() {
        if (listDeque.isEmpty()) {
            System.out.println(-1);
        } else {
            System.out.println(listDeque.getFirst());
        }
    }

    public static void back() {
        if (listDeque.isEmpty()) {
            System.out.println(-1);
        } else {
            System.out.println(listDeque.getLast());
        }
    }
}