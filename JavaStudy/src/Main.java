import javatest1.Animal;



public class Main {
    public static void main(String[] args) {
        Dog animal = new Dog("silver",13);
        animal.sound();
    }
}
class Dog extends Animal {
    public Dog(String name, int age) {
        super(name, age);
    }
    @Override
    public void sound() {
        System.out.println(this.name+"멍멍이요"+this.age);
    }
}

//public class Animal {
//    protected String name;
//    protected int age;
//    public Animal(String name, int age) {
//        this.name = name;
//        this.age = age;
//    }
//    public void sound() {
//        System.out.println("동물 소리를 내고 있습니다.");
//    }
//}