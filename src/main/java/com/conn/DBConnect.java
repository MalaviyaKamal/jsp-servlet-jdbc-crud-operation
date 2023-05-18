package com.conn;
import java.sql.*;
public class DBConnect {

	private static Connection conn=null;
	
	public static Connection getconn()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_dbs","root","");
		
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return conn;
	}
}
