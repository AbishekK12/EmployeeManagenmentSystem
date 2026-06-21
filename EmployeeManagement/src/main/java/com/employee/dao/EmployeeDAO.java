package com.employee.dao;

import java.util.List;

import com.employee.entity.Employee;

public interface EmployeeDAO {

	boolean addEmployee(Employee employee);

	boolean updateEmployee(Employee employee);

	Employee searchEmployeeById(int empId);

	List<Employee> viewAllEmployees();

	boolean deleteEmployee(int empId);
}
