package test5;

import java.util.ArrayList;

public class Example {
    public static void main(String[] args) {
        Person person1 = new Person();
        person1.name = "Alice";
        person1.age=30;

        Person person2;
        person2 = new Person();
        person2.name = "Bob";
        person2.age = 30;

        System.out.println(person1);
        System.out.println(person2);

    }
}

class Person{
    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
    String name;
    int age;
}
