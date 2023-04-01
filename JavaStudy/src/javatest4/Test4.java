package javatest4;

public class Test4 {
    public static void main(String[] args) {
        new Testprint().interfacePrint();
    }
}
class Testprint implements Shape{
    @Override
    public void interfacePrint() {
        System.out.println("야호");
    }
}
