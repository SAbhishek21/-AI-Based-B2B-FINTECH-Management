package com.highradius;
import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcConn {

	public Connection connection() {             //Established a connection to the DBMS
		Connection con=null;
		try {
			System.out.println("inside try");
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrc82633w","root","shibu@11");
		return con;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return con;
	}
}
