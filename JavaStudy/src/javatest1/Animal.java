package javatest1;

public class Animal {
    protected String name;
    protected int age;
    public Animal(String name, int age) {
        this.name = name;
        this.age = age;
    }
    public void sound() {
        System.out.println("동물 소리를 내고 있습니다.");
    }
}

