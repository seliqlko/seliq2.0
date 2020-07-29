<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<%
		String pid = request.getParameter("pid");
		

ServletContext context = getServletContext();
try 
{
String productName;
String EmpSurname;
String productPrice;
String productDescription;
String email;
Dao dao = new Dao();
Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"),
	context.getInitParameter("password"));
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select product_name,product_price,product_description,email from products where product_id= '"+pid+"';");
while (rs.next()) 
{
productName = rs.getString("product_name");
productDescription = rs.getString("product_description");
productPrice = rs.getString("product_price");
email = rs.getString("email");


%>
<html>
<head>
<meta charset="UTF-8">
<title><%=productName %></title>
<link rel="stylesheet" type="text/css" href="/new/css/desc.css">
</head>
<body>
<div class="f_container">
	<div class="lefthalf">      
                
    <img style ="height:100%;width:100%" src="ImageDisplayer?id=<%=pid%>" />
    
    </div>
</div>
<div class="rightHalf">
        
            
    <p class="pro_title">
       <%=productName %>
                
    </p>
    <p class="pro_price">
        <%=productPrice %> Rs
    </p>
    <p class="pro_title">Posted by: <%=email %></p>
    <p class="pro_desc">
        <%=productDescription %>
        
    </p>
    
    <div class="row">
    <button class="button" type="button">Add to wishlist</button>
    </div>
    
</div>
                
</body>
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
</html>