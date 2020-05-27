package com.mcnz.restful.java.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCConnection {

public Connection getConnnection() {
 Connection con = null;
 try {
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 String uid="root";
 String pwd="Vasanthi@1";
// String pwd="123789";
 con = DriverManager.getConnection("jdbc:mysql://localhost/Soccer", uid, pwd);
 
 if (!con.isClosed())
     System.out.println("Connected to MySQL server.");
}
	catch(Exception e) {
		System.err.println("Exception:" + e.getMessage());
	}
 return con;
 
}
}

