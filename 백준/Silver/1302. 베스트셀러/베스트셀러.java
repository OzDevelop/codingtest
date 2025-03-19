import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Main {
    static class Book implements Comparable<Book> {
        String name;
        int count;

        public Book(String name, int count) {
            this.name = name;
            this.count = count;
        }

        @Override
        public int compareTo(Book o) {
            if(this.count == o.count) {
                return this.name.compareTo(o.name);
            }
            return o.count - count;
        }
    }


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt(); // 팔린 책의 개수
        sc.nextLine();

        Map<String, Integer> map = new HashMap<>();

        for(int i=0; i<N; i++) {
            String book = sc.nextLine();

            map.put(book, map.getOrDefault(book, 0) + 1);
        }

        List<Book> books = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            books.add(new Book(entry.getKey(), entry.getValue()));
        }

        Collections.sort(books);

        System.out.println(books.get(0).name);
    }
}
