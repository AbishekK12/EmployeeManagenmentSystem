package com.employee.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.dao.EmployeeDAOImplentation;
import com.employee.entity.Employee;

@WebServlet("/searchEmployee")
public class SearchEmployeeServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		int empId = Integer.parseInt(request.getParameter("empId"));
		
		EmployeeDAO dao = new EmployeeDAOImplentation();
		
		Employee emp = dao.searchEmployeeById(empId);
		
		request.setAttribute("employee", emp);

        RequestDispatcher rd = request.getRequestDispatcher("searchEmployee.jsp");
        rd.forward(request, response);
    }
	}


