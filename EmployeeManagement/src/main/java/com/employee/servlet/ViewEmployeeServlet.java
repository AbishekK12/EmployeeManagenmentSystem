package com.employee.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.dao.EmployeeDAOImplentation;
import com.employee.entity.Employee;

@WebServlet("/viewEmployees")
public class ViewEmployeeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        EmployeeDAO dao = new EmployeeDAOImplentation();

        List<Employee> list = dao.viewAllEmployees();

        request.setAttribute("employees", list);

        request.getRequestDispatcher("viewEmployees.jsp")
               .forward(request, response);
    }
}