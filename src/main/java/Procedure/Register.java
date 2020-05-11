/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procedure;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import entity.User;

/*For registration through procedures
 * can be incorporated later
 */
/**
 *
 * @author rishabh
 */
public class Register {
	public void register(Connection con, User user) throws SQLException {
		CallableStatement cstm = con.prepareCall("{call register_procedure(?,?,?,?,?,?,?,?)}");
		cstm.setString(1, "Nafees");
		cstm.setString(2, "Ansari");
		cstm.setString(3, "54684");
		cstm.setInt(4, 1);
		cstm.setString(5, "nafees@gmail.com");
		cstm.setString(6, "nafees");
		cstm.setInt(7, 1);
		cstm.setString(8, "ghjgjhgjhgfhg");
		cstm.execute();
	}
}
