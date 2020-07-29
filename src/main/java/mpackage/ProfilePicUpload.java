package mpackage;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import entity.Dao;
import entity.ProfilePicUploadDao;

/**
 * Servlet implementation class ProfilePicUpload
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/ProfilePicUpload")
public class ProfilePicUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfilePicUpload() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext context = getServletContext();
		Dao dao = new Dao();

		try {
			Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
					context.getInitParameter("password"));
			String phone = request.getParameter("phone");
			InputStream inputStream = null;
			// System.out.println(productName + " " + productCategory + " " +
			// productDescription + " " + productPrice);
			String message = null;

			// Obtains the upload file
			// part in this multipart request
			Part filePart = request.getPart("photo");

			if (filePart == null)
				System.out.print("Empty");

			if (filePart != null) {

				// Prints out some information
				// for debugging
				System.out.println(filePart.getName());
				System.out.println(filePart.getSize());
				System.out.println(filePart.getContentType());

				// Obtains input stream of the upload file
				inputStream = filePart.getInputStream();
			}
			int row = ProfilePicUploadDao.uploadFile(con, inputStream, phone);
			if (row > 0) {
				message = "File uploaded and " + "saved into database";
			}
			request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);
			System.out.println(message);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
