package com.util;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class GongJuClass {
<<<<<<< HEAD
	

	public static int updateSQL(String sq) {
=======
	private static final String db_name = "huaweidb"; 

	public static int updateSQL(String sql) {
>>>>>>> 4e6bf62257a610abfbabe0903aa7c6659d15ad18
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("驱动加载失败！");
			e.printStackTrace();
		}
		Connection con = null;
		Statement sta = null;
		try {
			con = (Connection) DriverManager.getConnection(
<<<<<<< HEAD
					"jdbc:mysql://localhost:3306/huaweidb", "root", "admin");
			System.out.println("数据库连接成功！");
			sta = (Statement) con.createStatement();
			int n = sta.executeUpdate(sq);
			return n;
		} catch (SQLException e) {
			System.out.println("数据库连！或执行sql失败！");
=======
					"jdbc:mysql://localhost:3306/huaweidb", "root", "q1w2e3");
			System.out.println("数据库连接成功！");
			sta = (Statement) con.createStatement();
			int n = sta.executeUpdate(sql);
			return n;
		} catch (SQLException e) {
			System.out.println("数据库连接失败！或执行sql失败！");
>>>>>>> 4e6bf62257a610abfbabe0903aa7c6659d15ad18
			e.printStackTrace();
		} finally {
//			try {
//				if (sta != null) {
//					sta.close();
//				}
//				if (con != null) {
//					con.close();
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				System.out.println("数据库连接关闭失败！");
//				e.printStackTrace();
//			}
		}

		return 0;
	}

	public static ResultSet querySQL(String sql) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("驱动加载失败！");
			e.printStackTrace();
		}

		Connection con = null;
		Statement sta = null;
		try {
			con = (Connection) DriverManager.getConnection(
<<<<<<< HEAD
					"jdbc:mysql://localhost:3306/huaweidb" ,"root", "admin");
=======
					"jdbc:mysql://localhost:3306/huaweidb" ,"root", "q1w2e3");
>>>>>>> 4e6bf62257a610abfbabe0903aa7c6659d15ad18
			sta = (Statement) con.createStatement();
			ResultSet rs = (ResultSet) sta.executeQuery(sql);
			return rs;
		} catch (SQLException e) {
<<<<<<< HEAD
			System.out.println("数据库连接失败！或执行败！");
=======
			System.out.println("数据库连接失败！或执行sql失败！");
>>>>>>> 4e6bf62257a610abfbabe0903aa7c6659d15ad18
			e.printStackTrace();
		} finally {
//			try {
//				if (sta != null) {
//					sta.close();
//				}
//				if (con != null) {
//					con.close();
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				System.out.println("数据库连接关闭失败！");
//				e.printStackTrace();
//			}
		}

		return null;
	}

}
