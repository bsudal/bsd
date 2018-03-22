package teambsd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionUtil {
	public static Connection con = null;
	public static String ID = "root";
	public static String PASSWORD = "Bsgay1234!";
	public static String url = "jdbc:mysql://221.164.9.30:3306/bsg";
//	public static String url = "jdbc:mysql://localhost:3307/bsg";
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch ( ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		if ( con == null ) {
			con = DriverManager.getConnection(url, ID, PASSWORD);
		}
		return con;
	}

	public static void Close() {
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
