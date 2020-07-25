<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
 
<%@include file="/WEB-INF/fragments/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<title>Seliq - Product</title>
<link rel="stylesheet" type="text/css" href="/new/css/products.css">
</head>
<body>
	<%
		String category = request.getParameter("category");
		
	%>
	
	<main class="body_section">
		<div class="c_container">
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
        ResultSet rs = stmt.executeQuery("select product_id,product_name from products where product_category= '"+category+"';");
        while (rs.next()) 
        {
            productName = rs.getString("product_name");
            productId = rs.getInt("product_id");
            
            %>
            <div class="product_thumb"><img src="ImageDisplayer?id=<%=productId%>" /></div>
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
			
			
		</div>

	</main>
</body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>