package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
	private final String serverName ="10.211.55.5";
	private final String dbName = "ShoppingDB";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "root";
	private final String password = "Tuan2338";
	
	public Connection getConnection() throws Exception{
		String url = "jdbc:mysql://localhost:3306/ShoppingDB";

		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(url, userID , password);
		}
}
