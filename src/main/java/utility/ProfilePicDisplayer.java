package utility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

import entity.Dao;

/**
 * Servlet implementation class ProfilePicDisplayer
 */
@WebServlet("/ProfilePicDisplayer")
public class ProfilePicDisplayer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfilePicDisplayer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext context = getServletContext();
		String email = request.getParameter("email");
		// System.out.println(email);
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		byte[] imageData = null;
		try {
			Dao dao = new Dao();
			con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
					context.getInitParameter("password"));
			stmt = (Statement) con.createStatement();
			String query = "select photo from user_master us inner join login_table l on(us.phone=l.phone) where email='"
					+ email + "';";
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				// InputStream input = rs.getBinaryStream("photo");
				imageData = rs.getBytes("photo");

				// OutputStream output = response.getOutputStream();
				// response.setContentType("image/gif");
			}
			response.setHeader("Content-Length", String.valueOf(imageData.length));
			response.getOutputStream().write(imageData);
			// String contentType = this.getServletContext().getMimeType("billgate.png");
			// System.out.println("Content Type: " + contentType);
			// response.setHeader("Content-Type", contentType);

			// Write image data to Response.

		} catch (Exception e) {
			e.printStackTrace();
			return;
		} finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
