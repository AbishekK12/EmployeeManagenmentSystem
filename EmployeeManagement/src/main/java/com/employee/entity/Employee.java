package com.employee.entity;

public class Employee {

	private int empId;
	private String empName;
	private int age;
	private String department;
	private String designation;
	private double salary;
	private String email;
	private int choice;

	public Employee(int empId, String empName, int age, String department, String designation, double salary,
			String email) {
		this.empId = empId;
		this.empName = empName;
		this.age = age;
		this.department = department;
		this.designation = designation;
		this.salary = salary;
		this.email = email;
	}

	public Employee() {
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

	public int getChoice() {
		return choice;
	}

	public void setChoice(int choice) {
		this.choice = choice;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", age=" + age + ", department=" + department
				+ ", designation=" + designation + ", salary=" + salary + ", email=" + email + "]";
	}

}
