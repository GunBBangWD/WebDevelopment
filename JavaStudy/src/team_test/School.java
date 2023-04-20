package team_test;

import java.util.ArrayList;

public class School {
    ArrayList<Student> students = new ArrayList<Student>();
    ArrayList<Classroom> classrooms = new ArrayList<Classroom>();




    public void addStudent(Student student) {
        students.add(student);
    }
    public void addClassroom(Classroom classroom) {
        classrooms.add(classroom);
    }

    public void printAll(){
        ArrayList<Student> printList = new ArrayList<>();
        printList.addAll(students);
        for (Classroom c : classrooms){
            printList.addAll(c.students);
        }

        for (Student c : students){
            System.out.println(c);
        }


    }

}