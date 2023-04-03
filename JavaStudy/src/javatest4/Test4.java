package javatest4;

import java.util.ArrayList;

public class Test4 {
    public static void main(String[] args) {
        new Testprint().interfacePrint();
        Testprint testprint = new Testprint();
        testprint.testArray = new ArrayList<>();
        testprint.testArray.add("fefefe");
        testprint.testArray.add("fefefe2");
        testprint.testArray.add("fefefe3");
        testprint.testArray.add("fefefe4");
        System.out.println(testprint.testArray);

    }
}
class Testprint implements Shape{
    ArrayList<String> testArray;
    @Override
    public void interfacePrint() {
        System.out.println("야호");
    }
}
