/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mpackage;

import entity.Dao;
import entity.ValidateDao;
import java.sql.Connection;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rishabh
 */
public class ValidateModel implements ModelInterface {
    
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
        Dao dao = new Dao();
        try {
            Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
            String code = request.getParameter("code");
            ValidateDao vdao = new ValidateDao();
            vdao.validate(con, code);
        } catch (Exception ex) {
            
        }
        
    }
    
}
