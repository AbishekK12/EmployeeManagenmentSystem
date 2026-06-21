package com.employee.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.dao.EmployeeDAOImplentation;
import com.employee.entity.Employee;

@WebServlet("/addEmployee")
public class AddEmployeeServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException 
	{
		// Reading the data from the frontend
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String department = request.getParameter("department");
		String designation = request.getParameter("designation");
		double salary = Double.parseDouble(request.getParameter("salary"));
		String email = request.getParameter("email");
		
		// Creating class for DAO
		
		Employee emp = new Employee();
		
		emp.setEmpName(name);
		emp.setAge(age);
		emp.setDepartment(department);
		
		emp.setDesignation(designation);
		emp.setSalary(salary);
		emp.setEmail(email);
		
		EmployeeDAO dao = new EmployeeDAOImplentation();//upcasting
		
		boolean status = dao.addEmployee(emp);
		
		if (status) {
			response.sendRedirect("addEmployee.jsp?msg=success");
		} else {
			response.sendRedirect("addEmployee.jsp?msg=failed");
		}

	}
}
