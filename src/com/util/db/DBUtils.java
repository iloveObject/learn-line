package com.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import com.mysql.jdbc.Statement;


public class DBUtils {
	//数据库连接地址
	public static String URL;
	//用户名
	public static String USERNAME;
	//密码
	public static String PASSWORD;
	public static String DRIVER;
	
	private static ResourceBundle rb = ResourceBundle.getBundle("com.util.db.db-config");
	private DBUtils() {}
	//使用静态块加载驱动程序
	static {
		URL = rb.getString("jdbc.url");
		USERNAME = rb.getString("jdbc.username");
		PASSWORD = rb.getString("jdbc.password");
		DRIVER = rb.getString("jdbc.driver");
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	//定义一个连接数据库的方法
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("数据库连接失败!");
		}
		return conn;
	}
	//关闭数据库连接
	public static void close(ResultSet rs,Statement stat,Connection conn) {
		try {
			if(rs != null)rs.close();
			if(stat !=null)stat.close();
			if(conn !=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
