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
public class LoginDao {
    public ResultSet toFetch(Connection con, String query) throws SQLException {
        Statement st=con.createStatement();
        return st.executeQuery(query);
    }
}
