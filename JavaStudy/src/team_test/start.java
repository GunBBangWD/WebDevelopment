package team_test;

import java.util.ArrayList;

public class start {

    public static void main(String[] args) {
        Student s1 = new Student("송현아",26);
        Student s2 = new Student("김민지",32);
        Student s3 = new Student("박일후",30);
        Student s4 = new Student("안일원",29);
        Classroom c1 = new Classroom(30);
        c1.addStudent(s1);
        c1.addStudent(s2);
        c1.addStudent(s3);
        c1.addStudent(s4);

        School school = new School();
        school.addStudent(s1);
        school.addStudent(s2);
        school.addStudent(s3);
        school.addStudent(s4);
        school.addClassroom(c1);

        school.printAll();

    }
}
