package entity;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FileUploadDao {
	public static int uploadFile(Connection con, String productName, String productDescription, InputStream file,
			String productCategory, String productPrice, String email) {
		String SQL = "INSERT INTO products " + "(product_name, product_description, "
				+ "photo,product_price, product_category,email) values (?, ?, ?,?,?,?)";
		int row = 0;

		PreparedStatement preparedStatement;
		try {
			preparedStatement = (PreparedStatement) con.prepareStatement(SQL);

			preparedStatement.setString(1, productName);

			preparedStatement.setString(2, productDescription);

			preparedStatement.setString(4, productPrice);

			preparedStatement.setString(5, productCategory);

			preparedStatement.setString(6, email);

			if (file != null) {

				// Fetches the input stream
				// of the upload file for
				// the blob column
				preparedStatement.setBlob(3, file);
			}

// Sends the statement to 
// the database server 
			row = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("Exception");
		}

		return row;
	}
}
