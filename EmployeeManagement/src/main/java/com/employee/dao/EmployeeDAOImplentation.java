package com.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.employee.entity.Employee;
import com.employee.util.DBConnection;

public class EmployeeDAOImplentation implements EmployeeDAO {

	@Override
	public boolean addEmployee(Employee employee) {

		String sql = "INSERT INTO employee(emp_name,age,department,designation,salary,email) VALUES(?,?,?,?,?,?)";

		try {

			Connection con = DBConnection.getConnection();

			System.out.println("Connection = " + con);

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, employee.getEmpName());
			ps.setInt(2, employee.getAge());
			ps.setString(3, employee.getDepartment());
			ps.setString(4, employee.getDesignation());
			ps.setDouble(5, employee.getSalary());
			ps.setString(6, employee.getEmail());

			int rows = ps.executeUpdate();

			System.out.println("Rows inserted = " + rows);

			return rows > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateEmployee(Employee employee) {

		String sql = "";

		switch (employee.getChoice()) {

		case 1:
			sql = "UPDATE employee SET emp_name=? WHERE emp_id=?";
			break;

		case 2:
			sql = "UPDATE employee SET age=? WHERE emp_id=?";
			break;

		case 3:
			sql = "UPDATE employee SET department=? WHERE emp_id=?";
			break;

		case 4:
			sql = "UPDATE employee SET designation=? WHERE emp_id=?";
			break;

		case 5:
			sql = "UPDATE employee SET salary=? WHERE emp_id=?";
			break;

		case 6:
			sql = "UPDATE employee SET email=? WHERE emp_id=?";
			break;

		default:
			return false;
		}

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			switch (employee.getChoice()) {

			case 1:
				ps.setString(1, employee.getEmpName());
				break;

			case 2:
				ps.setInt(1, employee.getAge());
				break;

			case 3:
				ps.setString(1, employee.getDepartment());
				break;

			case 4:
				ps.setString(1, employee.getDesignation());
				break;

			case 5:
				ps.setDouble(1, employee.getSalary());
				break;

			case 6:
				ps.setString(1, employee.getEmail());
				break;
			}

			ps.setInt(2, employee.getEmpId());

			return ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Employee searchEmployeeById(int empId) {
		String sql = "SELECT * FROM employee WHERE emp_id=?";

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, empId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				Employee emp = new Employee();
				emp.setEmpId(rs.getInt("emp_id"));
				emp.setEmpName(rs.getString("emp_name"));
				emp.setAge(rs.getInt("age"));
				emp.setDepartment(rs.getString("department"));
				emp.setDesignation(rs.getString("designation"));
				emp.setSalary(rs.getDouble("salary"));
				emp.setEmail(rs.getString("email"));

				return emp;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	
	@Override
	public boolean deleteEmployee(int empId) {

	    String sql = "DELETE FROM employee WHERE emp_id=?";

	    try {

	        Connection con = DBConnection.getConnection();

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, empId);

	        return ps.executeUpdate() > 0;

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return false;
	}

	@Override
	public List<Employee> viewAllEmployees() {

	    List<Employee> list = new ArrayList<>();

	    String sql = "SELECT * FROM employee";

	    try {

	        Connection con = DBConnection.getConnection();

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Employee emp = new Employee();

	            emp.setEmpId(rs.getInt("emp_id"));
	            emp.setEmpName(rs.getString("emp_name"));
	            emp.setAge(rs.getInt("age"));
	            emp.setDepartment(rs.getString("department"));
	            emp.setDesignation(rs.getString("designation"));
	            emp.setSalary(rs.getDouble("salary"));
	            emp.setEmail(rs.getString("email"));

	            list.add(emp);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
}
