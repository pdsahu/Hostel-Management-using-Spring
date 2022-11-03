package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	//SQL SERVER PASSWORD

	
	private static Connection conn;
	
	public static Connection getConn() 
	{
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");//loading driver
			//connection jdbc
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management","root","Sql Server Password");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
}

