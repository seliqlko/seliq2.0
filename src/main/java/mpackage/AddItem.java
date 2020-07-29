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
import entity.FileUploadDao;

/**
 * Servlet implementation class AddItem
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/addItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddItem() {
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
			String email = request.getParameter("email");

			String productName = request.getParameter("product_name");
			String productDescription = request.getParameter("product_description");
			String productCategory = request.getParameter("product_category");
			String productPrice = request.getParameter("product_price");
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
			int row = FileUploadDao.uploadFile(con, productName, productDescription, inputStream, productCategory,
					productPrice, email);
			if (row > 0) {
				message = "File uploaded and " + "saved into database";
			}
			System.out.println(message);
			request.setAttribute("recovery", "Item has been successfully added");
			request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
