package test6_school;

import java.util.ArrayList;

public class Test6 {
    public static void main(String[] args) {
        Student student1 = new Student("test1",13);
        Student student2 = new Student("test2",13);
        Student student3 = new Student("test3",13);
        Student student4 = new Student("test4",13);
        Student student5 = new Student("test5",13);
        Student student6 = new Student("test6_school",13);

        School school = new School();
        school.addStudent(student1);
        Classroom classroom1 = new Classroom();
        Classroom classroom2 = new Classroom();

        classroom1.addStudent(student2);
        classroom1.addStudent(student3);
        classroom2.addStudent(student4);
        classroom2.addStudent(student5);
        classroom2.addStudent(student6);
        school.addClassroom(classroom1);
        school.addClassroom(classroom2);
        System.out.println(school.getStudents());
    }
}
class Student{
    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
    String name;
    int age;
    public Student(String name, int age) {
        this.name = name;
        this.age = age;
    }
}

class School{
    ArrayList<Student> students;
    ArrayList<Classroom> classrooms;
    School(){
        students = new ArrayList<>();
        classrooms = new ArrayList<>();
    }
    public void addStudent(Student student){
        this.students.add(student);
    }
    public void addClassroom(Classroom classroom){
        this.classrooms.add(classroom);
    }
    public ArrayList<Student> getStudents(){
        ArrayList<Student> students1 = new ArrayList<>();
        students1.addAll(this.students);
        for(Classroom cl1:classrooms){
            for (Student st1:cl1.students){
                students1.add(st1);
            }
        }
        return students1;
    }
}

class Classroom{
    int capacity=5;
    ArrayList<Student> students;
    public Classroom() {
        this.students = new ArrayList<>();
    }
    public boolean addStudent(Student student){
        if(this.students.size()>=capacity){
            return false;
        }else {
            this.students.add(student);
            return true;
        }
    }
}