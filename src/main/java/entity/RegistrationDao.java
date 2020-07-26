/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author rishabh
 */
public class RegistrationDao {

	public boolean toDbQuery(Connection con, User user) throws SQLException {
		String query = "insert into user_master values('" + user.getFirstname() + "','" + user.getLastname() + "','"
				+ user.getPhone() + "','Gen','" + user.getCity() + "',NULL);";
		String query1 = "insert into login_table values('" + user.getEmail() + "','" + user.getPassword() + "','"
				+ user.getStatus() + "','" + user.getPhone() + "');";
		Statement st = con.createStatement();
		boolean b = st.execute(query);
		st.execute(query1);
		query = "insert into mail_code values('" + user.getEmail() + "','" + user.getCode() + "','NULL');";
		st.execute(query);
		/*
		 * Register obj=new Register(); obj.register(con, user);
		 */
		return b;
	}

}
