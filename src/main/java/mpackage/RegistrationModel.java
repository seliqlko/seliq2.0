/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mpackage;

import java.sql.Connection;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Dao;
import entity.RegistrationDao;
import entity.User;
import utility.MailSender;

/**
 *
 * @author rishabh
 */
public class RegistrationModel implements ModelInterface {

	@Override
	public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
		try {
			User user;
			String code = UUID.randomUUID().toString();
			user = new User(request.getParameter("email"), request.getParameter("password"),
					request.getParameter("firstname"), request.getParameter("lastname"), request.getParameter("phone"),
					code);
			Dao dao = new Dao();

			Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
					context.getInitParameter("password"));
			RegistrationDao rdao = new RegistrationDao();
			rdao.toDbQuery(con, user);
			MailSender mail = new MailSender();
			mail.sendMail(request.getParameter("email"), code);
			request.getRequestDispatcher("/WEB-INF/Messages/RegistrationMessage.jsp").forward(request, response);

		} catch (Exception ex) {
			Logger.getLogger(RegistrationModel.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
