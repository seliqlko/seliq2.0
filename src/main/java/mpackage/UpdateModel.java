package mpackage;

import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Dao;

/**
 *
 * @author rishabh
 */
public class UpdateModel implements ModelInterface {

	public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
		String password = request.getParameter("passwd");
		Dao dao = new Dao();
		String email = request.getParameter("email");
		try {
			Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
					context.getInitParameter("password"));
			Statement st = con.createStatement();
			int b = st.executeUpdate("update login_table set password='" + password + "' where email='" + email + "';");
			if (b != 0) {
				request.getRequestDispatcher("/WEB-INF/pages/loginpage.jsp").forward(request, response);
			} else {
				System.out.println("Password not changed");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

}
