package team_test;

import java.util.ArrayList;

public class Classroom {
    public int capacity;
    public ArrayList<Student> students = new ArrayList<Student>();
    public Classroom(int capacity) {
        this.capacity = capacity;
    }
    public boolean addStudent(Student student) {
        if (students.size() <= capacity) {
            students.add(student);
            return true;
        }
        return false;
    }
}
