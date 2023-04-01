package javatest2;

public class test2 {
    static public int add(int a) {
        return a;
    }
    static public int add(int a, int b) {
        return a + b;
    }
    public static void main(String[] args) {
        System.out.println(add(3)); // 3 출력
        System.out.println(add(3, 5));
        // 8 출력
    }
}
