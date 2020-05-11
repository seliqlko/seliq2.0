package mpackage;

import entity.Dao;
import entity.LoginDao;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rishabh
 */
public class LoginModel implements ModelInterface{
    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context){
        try(PrintWriter out = response.getWriter()) {
            Dao dao=new Dao();
            
            Connection con=dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
            String email=request.getParameter("email");
            
            int status;
            String password=request.getParameter("password");
            String query="select * from user_master us inner join login_table l on(us.phone=l.phone) where email='"+email+"'";
            
            LoginDao ld=new LoginDao();
            ResultSet rs=null;
            rs=ld.toFetch(con, query);
            if(!rs.next()){
                request.getRequestDispatcher("/WEB-INF/Messages/UNFMessage.jsp").forward(request, response);
            }
            status=rs.getInt("status");
            if(status==1){
                request.setAttribute("message","Email not activated");
            }else if(status==2){
                if(password.equals(rs.getString("password"))){
                    HttpSession sess=request.getSession(true);
                    //sess.setAttribute("firstname",rs.getString("first_name"));
                    
                    sess.setAttribute("email", email);
                    sess.setAttribute("first_name", rs.getString("first_name"));
                    sess.setAttribute("last_name", rs.getString("last_name"));
                    sess.setAttribute("phone",rs.getString("phone"));
                    request.setAttribute("message","Login Successful!");
                    
                }else{
                    request.setAttribute("message","Password Incorrect");
                }
                
            }
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);    
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
}
