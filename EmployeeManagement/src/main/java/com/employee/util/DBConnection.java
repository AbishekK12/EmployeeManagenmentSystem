package com.employee.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static final String URL = "jdbc:mysql://localhost:3306/employeedb";
	private static final String USER = "root";
	private static final String PASSWORD = "root";
	
	
	public static Connection getConnection()
	{
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			return DriverManager.getConnection(URL,USER,PASSWORD);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return null;
	}
	
	
//	public static void main(String[] args) {
//		System.out.println("Connection");
//		System.out.println(getConnection());
//	}

}
