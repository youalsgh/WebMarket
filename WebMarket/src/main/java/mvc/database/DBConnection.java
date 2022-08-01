package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/WebMarketDB?ServerTimezone=Asia/Seoul&useSSL=false";
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
		return conn;
	}
	
}
