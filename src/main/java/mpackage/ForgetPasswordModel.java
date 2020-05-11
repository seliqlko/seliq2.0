/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mpackage;

import entity.Dao;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utility.RecoveryMail;

/**
 *
 * @author rishabh
 */
public class ForgetPasswordModel implements ModelInterface{

    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
        try{
            Dao dao=new Dao();
            Connection con=dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
            String email=request.getParameter("email");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select email from login_table where email='"+email+"' and status ='2';");
            PrintWriter out=response.getWriter();
            if(rs.next()){
                
                String otp=OTPGenerator.OTPGenerator.OTP(10);
                RecoveryMail mailSender=new RecoveryMail();
                PreparedStatement pst=con.prepareStatement("insert into mail_code values(?,?,?);");
                pst.setString(1, email);
                pst.setString(2,null);
                pst.setString(3, otp);
                pst.execute();
                mailSender.sendMail(email, otp);
                out.println("Check your mail");
            }else{
                out.println("User not found");
            }
            con.close();
        }catch(Exception e){
            
        }
    }
    
}
