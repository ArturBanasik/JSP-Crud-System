
package pl.arturbanasik.Provider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UserDAOImpl implements UserDao {

	static Connection  con;
	static PreparedStatement ps;
	
	
	public int insertUser(User u) {
		int status=0;
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("insert into user value (?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getName());
			ps.setString(3, u.getPassword());
			status=ps.executeUpdate();
			con.close();
		}catch (Exception e) {
			System.err.print(e);
		}
		return status;
	}

	
	public User getUser(String userid, String pass) {
		User u = new User();
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("select  * from user where username=? and password=?" );
			
			ps.setString(1, userid);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) { 
				u.setUsername(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setName(rs.getString(3));
			}
			con.close();
			
		} catch (Exception e) {
			System.err.print(e);
		}
		
		
		return u;
	}

	
	
	
	
}
