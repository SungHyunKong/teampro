package db;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class JdbcUtil {
	
	public static Connection getConnection()throws SQLException, ClassNotFoundException  {		

		Connection con = null;		
	
		String url = "jdbc:mysql://localhost:3306/teamproject?characterEncoding=utf-8&serverTimeZone=UTC";
		String user = "root";
		String password = "admin1234";

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);		
		
		return con;
	}
	
	public static void close(Connection con) {
		try {
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			stmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con) {
		try {
			con.commit();
			System.out.println("commit success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			con.rollback();
			System.out.println("rollback success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
