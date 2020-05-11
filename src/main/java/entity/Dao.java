/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author rishabh
 */
public class Dao {

    Connection con = null;

    public Connection toConnect(String url,String username,String password) throws Exception {

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password);
        return con;

    }

    /**
     *
     * @param st
     * @param query
     * @throws SQLException
     */
    
}
