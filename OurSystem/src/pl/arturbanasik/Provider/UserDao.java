
package pl.arturbanasik.Provider;

public interface UserDao {

	public int insertUser(User u);
	public User getUser(String username,String password);
	
}
