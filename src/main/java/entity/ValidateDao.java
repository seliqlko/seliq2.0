/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author rishabh
 */
public class ValidateDao {
    public boolean validate(Connection con, String code) throws SQLException {
        Statement st=con.createStatement();
        String query="select email from mail_code where ucode='"+code+"';";
        ResultSet rs=st.executeQuery(query);
        rs.next();
        String email=rs.getString("email");
        query="update login_table set status=2 where email='"+email+"';";
        st.execute(query);
        return true;
    }
}
