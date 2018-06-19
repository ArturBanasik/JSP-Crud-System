package pl.arturbanasik.Provider;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginDB")
public class LoginDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginDB() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDao ud = new UserDAOImpl();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String submitType = request.getParameter("submit");
		User u = ud.getUser(username, password);
		
		if (submitType.equals("login") && u!= null && u.getName()!= null) {
			String welcomeName = u.getName();
			welcomeName = welcomeName.substring(0,1).toUpperCase() + welcomeName.substring(1).toLowerCase();
			request.setAttribute("message", welcomeName);
			request.getRequestDispatcher("BookList.jsp").forward(request, response);

		/*} else if (submitType.equals("register")) {
			u.setName(request.getParameter(null));
			u.setPassword(password);
			u.setUsername(userName);
			ud.insertUser(u);
			request.setAttribute("message", "RegistrationDOne");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		 */
		} else {
			request.setAttribute("message", "Poda³eœ b³êdne dane, spróbuj ponownie");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			

		}

	}

}
