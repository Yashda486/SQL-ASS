package MyPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Student {
	public void createDatabase() {
	try {
		String url="jdbc:mysql://localhost:3306/";
		String userName="root";
		String password="Yash@#123";
		
		Connection conn = DriverManager.getConnection(url,userName,password);
		Statement stm = conn.createStatement();
		
		String query = "CREATE DATABASE YASHDB";
		stm.execute(query);
		System.out.println("Database created Successfully ");
		conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
	
}

	public void createTable() {
	
		try {
			String url="jdbc:mysql://localhost:3306/yashdb";
			String userName="root";
			String password="Yash@#123";
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			Statement stm = conn.createStatement();
			
			String query = "CREATE TABLE STUDENT (sid INT(3),sname VARCHAR(100), semail VARCHAR(100))";
			stm.execute(query);
			System.out.println("Table created Successfully ");
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}	
		
	}

	public void createData() {
	   
		try {
			String url="jdbc:mysql://localhost:3306/yashdb";
			String userName="root";
			String password="Yash@#123";
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			//Statement stm = conn.createStatement();
			
			String query = "INSERT INTO STUDENT (sid,sname,semail) VALUES(?,?,?)";
			PreparedStatement pstm = conn.prepareStatement(query);
			pstm.setInt(1, 3);
			pstm.setString(2, "Sarthak");
			pstm.setString(3, "sar@gmail.com");
			
			pstm.executeUpdate();
			System.out.println("Data added Successfully ");
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
		
	}

	public void readData() {
		
		try {
			String url="jdbc:mysql://localhost:3306/yashdb";
			String userName="root";
			String password="Yash@#123";
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			Statement stm = conn.createStatement();
			
			String query = "SELECT * from Student";
			
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()) {
				System.out.println(" id ="+rs.getInt(1));
				System.out.println(" name ="+rs.getString(2));
				System.out.println(" email ="+rs.getString(3));
			}
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
		
	
	}

	public void updateData() {
		
		try {
			String url="jdbc:mysql://localhost:3306/yashdb";
			String userName="root";
			String password="Yash@#123";
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			//Statement stm = conn.createStatement();
			
			String query = "UPDATE STUDENT SET semail=? where sid=?";
			PreparedStatement pstm = conn.prepareStatement(query);
			pstm.setString(1, "sarthak@gmail.com");
			pstm.setInt(2, 3);
			
			pstm.executeUpdate();
			System.out.println("Data Updated Successfully ");
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
		
	}

	public void deleteData() {
		
		try {
			String url="jdbc:mysql://localhost:3306/yashdb";
			String userName="root";
			String password="Yash@#123";
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			//Statement stm = conn.createStatement();
			
			String query = "DELETE FROM STUDENT WHERE sid=?";
			PreparedStatement pstm = conn.prepareStatement(query);
			pstm.setInt(1, 1);
			
			pstm.executeUpdate();
			System.out.println("Data deleted Successfully ");
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}

}
