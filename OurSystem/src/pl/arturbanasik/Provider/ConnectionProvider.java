
package pl.arturbanasik.Provider;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider  {

	static Connection con = null;

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/oursystemdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "admin");
		} catch (Exception e) {
			System.err.print(e);

		}
		return con;

	}

}
