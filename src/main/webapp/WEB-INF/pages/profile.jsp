<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>

<%@page session="true"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.mysql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="entity.Dao" %>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="/new/css/profile.css">
<title>Seliq - My Account</title>
</head>

<body>
	<%
		String lname = (String) session.getAttribute("last_name");
		String phone = (String) session.getAttribute("phone");
		String fname = (String) session.getAttribute("first_name");
	%>

	
	<main>
		<%
			ServletContext context = getServletContext();
    try 
    {
        String productName;
        String EmpSurname;
        Integer productId;
        Dao dao = new Dao();
		Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
				context.getInitParameter("password"));
		Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select photo from user_master us inner join login_table l on(us.phone=l.phone) where email='"+email+"';");
        if (rs.next()) 
        {
        	%>
        	
            
		<div class="body_section">

			<div class="fcontainer">

				<div class="upper_block">
					<div class="picture_container">
						<%
						if(rs.getBlob(1)==null) {System.out.println("Here");
            			%>
            			<img class="profile_picture" src="/new/Images/Untitled.png">
            			<form  action="ProfilePicUpload?phone=<%=phone%>" method="POST" enctype="multipart/form-data">
            			<div class="row">
            			<div class="caption">Add image</div>
            			<input type="file" accept="image" name="photo" />
            			</div>
            			<input class="button" type="submit" value="Upload">
            			</form>
            			<%
						}else{%>
            				<img style="width:100%;height:100%" class="profile_picture" src="ProfilePicDisplayer?email=<%=email%>" />
            			<%}
            			%>
					</div>

					<div class="name">
						<p><%=fname%>
							<%=lname%></p>
					</div>
				</div>

				<div class="lower_block">
					<div class="row">
						<p class="caption">Email :</p>
						<p><%=email%></p>
					</div>
					<div class="row">
						<p class="caption">Mobile Number :</p>
						<p><%=phone%></p>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%
        }
        rs.close();
        stmt.close();
        con.close();
    } 
    catch (Exception e) 
    {
        e.printStackTrace();
    } 
    %>
</body>

</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>