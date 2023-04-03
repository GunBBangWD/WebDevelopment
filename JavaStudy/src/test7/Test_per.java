package test7;

import java.util.ArrayList;

public class Test_per {
    public static void main(String[] args) {

    }
}
class Person{
    String name;
    int age;
}
class Employee extends Person{
    double salary;
    String department;
}
class Company{
    ArrayList<Employee> employees = new ArrayList<>();
    ArrayList<Department> departments = new ArrayList<>();
    void addEmployee(Employee employee) {
        this.employees.add(employee);
    }
    void addDepartment(Department department) {
        this.departments.add(department);
    }

}
class Department{
    String name;
    ArrayList<Employee> employees = new ArrayList<>();
    void addEmployee(Employee employee) {
        this.employees.add(employee);
    }

}
