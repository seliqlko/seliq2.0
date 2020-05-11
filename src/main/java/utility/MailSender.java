/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utility;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author rishabh
 */
public class MailSender {
	public boolean sendMail(String email, String code) {
		String from = "seliqlko@gmail.com";
		final String username = "seliqlko@gmail.com";
		final String password = "seliq2020";
		String host = "smtp.gmail.com";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		Session sess = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try {
			Message msg = new MimeMessage(sess);
			msg.setFrom(new InternetAddress(from));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			msg.setSubject("Welcome Mail");
			msg.setText("Welcome to our site");
			msg.setText("http://localhost:8080/new/fc/ab?page=Validate&type=model&code=" + code);
			Transport.send(msg);
		} catch (MessagingException ex) {
			ex.printStackTrace();
		}
		return true;
	}
}