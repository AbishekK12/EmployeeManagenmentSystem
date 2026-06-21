package com.employee.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.dao.EmployeeDAOImplentation;

@WebServlet("/deleteEmployee")
public class DeleteEmployeeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws IOException {

        int empId = Integer.parseInt(request.getParameter("empId"));

        EmployeeDAO dao = new EmployeeDAOImplentation();

        boolean status = dao.deleteEmployee(empId);


		if (status) {
			response.sendRedirect("deleteEmployee.jsp?msg=success");
		} else {
			response.sendRedirect("deleteEmployee.jsp?msg=failed");
		}
    }
}
