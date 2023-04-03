package test7;

import java.util.ArrayList;
import java.util.List;

public class SchoolRun{
	public static void main(String[] args) {
		School sc = new School();
		Classroom cr = new Classroom();
		Classroom cr2 = new Classroom();
		Student stu = new Student("엄준식", 15);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		stu = new Student("공승환", 15);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		stu = new Student("김재승", 17);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		stu = new Student("김준현", 18);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		stu = new Student("김현석", 16);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		stu = new Student("조민형", 17);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		stu = new Student("한건희", 16);
		cr.addStudent(stu);
		cr2.addStudent(stu);
		
		sc.addClassroom(cr);
		sc.addClassroom(cr2);
		for(Student a :sc.getStduents()) {
			System.out.println(a.name+"("+a.age+")");
		}
	}

}
class School{
	public List<Classroom> classrooms = new ArrayList<>();
	public void addClassroom(Classroom cr){
		classrooms.add(cr);
	}
	public List<Student> getStduents(){
		List<Student> allStudents = new ArrayList<>();
		for(Classroom cr : classrooms) {
			allStudents.addAll(cr.students);
		}
		return allStudents;
	}
	
}
class Classroom{
	public final int capacity=20;
	public List<Student> students = new ArrayList<>();
	
	public boolean addStudent(Student stu) {
		if(students.size()>=capacity) {
			return false;
		}
		else {
			students.add(stu);
			return true;
		}
	}
}
class Student {
	public String name;
	public int age;
	
	Student(String name, int age){
		this.name=name;
		this.age=age;
	}
}