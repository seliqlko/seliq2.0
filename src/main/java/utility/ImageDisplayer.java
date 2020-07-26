package utility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Dao;

/**
 * Servlet implementation class ImageDisplayer
 */
@WebServlet("/ImageDisplayer")
public class ImageDisplayer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageDisplayer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext context = getServletContext();
		Integer id = Integer.parseInt(request.getParameter("id"));
		// System.out.println(id);
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		byte[] imageData = null;
		try {
			Dao dao = new Dao();
			con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
					context.getInitParameter("password"));
			stmt = (Statement) con.createStatement();
			String query = "select photo from products where product_id='" + id + "';";
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
