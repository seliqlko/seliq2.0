/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mpackage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rishabh
 */
public class LogoutModel implements ModelInterface{

        public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
        
            HttpSession sess=request.getSession(false);
            if(sess!=null){
                sess.invalidate();
            }
            try {
                request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
    }
    
}
