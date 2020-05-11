/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mpackage;

import entity.Dao;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rishabh
 */
public class AvailabilityCheckModel implements ModelInterface{

    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
        try (PrintWriter out = response.getWriter()) {
            String email=request.getParameter("email");
            Dao dao=new Dao();
            Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
            Statement st=con.createStatement();
            String query="select * from login_table where email='"+email+"';";
            ResultSet rs=st.executeQuery(query);
            if(rs.next())out.println("<span style='color:red'>User Already Exists</span>");
            else out.println("<span style='color:green'>Available</span>");
                        
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
    
}
