package com.employee.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.dao.EmployeeDAOImplentation;
import com.employee.entity.Employee;

@WebServlet("/updateEmployee")
public class UpdateEmployeeServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int empId = Integer.parseInt(request.getParameter("empId"));
		int choice = Integer.parseInt(request.getParameter("choice"));

		Employee emp = new Employee();
		emp.setEmpId(empId);
		emp.setChoice(choice);

		switch (choice) {

		case 1:
			emp.setEmpName(request.getParameter("name"));
			break;

		case 2:
			emp.setAge(Integer.parseInt(request.getParameter("age")));
			break;

		case 3:
			emp.setDepartment(request.getParameter("department"));
			break;

		case 4:
			emp.setDesignation(request.getParameter("designation"));
			break;

		case 5:
			emp.setSalary(Double.parseDouble(request.getParameter("salary")));
			break;

		case 6:
			emp.setEmail(request.getParameter("email"));
			break;

		default:
			response.getWriter().println("Invalid Choice");
			return;
		}

		EmployeeDAO dao = new EmployeeDAOImplentation();

		boolean status = dao.updateEmployee(emp);
		if (status) {
			response.sendRedirect("updateEmployee.jsp?msg=success");
		} else {
			response.sendRedirect("updateEmployee.jsp?msg=failed");
		}
	}
}