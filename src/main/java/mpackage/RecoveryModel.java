/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mpackage;

import entity.Dao;
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
public class RecoveryModel implements ModelInterface{

    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
        String otp=request.getParameter("otp");
        Dao dao=new Dao();
        try {
            Connection con=dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select email from mail_code where otp='"+otp+"';");
            if(rs.next()){
                request.setAttribute("email",rs.getString("email"));
                request.getRequestDispatcher("/WEB-INF/pages/newPassword.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
    
}
