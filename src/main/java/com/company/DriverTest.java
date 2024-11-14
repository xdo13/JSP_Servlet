package com.company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {

	public static void main(String[] args) {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "dbuser", "12345");
			System.out.println("Success");
			
		}
		catch (SQLException ex) {System.out.println("SQLException" + ex);} 
		catch (Exception ex) {System.out.println("Exception" + ex);}
	}

}