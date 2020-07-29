<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<title>SELIQ- Password Reset</title>
<link rel="stylesheet" type="text/css"
	href="/new/css/password_reset.css">
</head>
<body>

	<main class="body_section">

		<form class="fcontainer"
			action="/new/fc?type=model&page=Update&email=<%=request.getParameter("email").toString()%>"
			method="POST">
			<div class="fheader">
				<p>Enter your new password</p>
			</div>

			<div class="row">
				<div class="caption">New password</div>
				<input type="password" name="passwd">
			</div>

			<div class="row">
				<div class="caption">Confirm password</div>
				<input type="password">
			</div>
			<button type="submit" class="button">Reset</button>
		</form>

	</main>
</body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>