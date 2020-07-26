package entity;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProfilePicUploadDao {
	public static int uploadFile(Connection con, InputStream file, String phone) {

		String SQL = "UPDATE user_master set photo = ? where phone = '" + phone + "';";
		int row = 0;

		PreparedStatement preparedStatement;
		try {
			preparedStatement = (PreparedStatement) con.prepareStatement(SQL);

			if (file != null) {

				// Fetches the input stream
				// of the upload file for
				// the blob column
				preparedStatement.setBlob(1, file);
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
