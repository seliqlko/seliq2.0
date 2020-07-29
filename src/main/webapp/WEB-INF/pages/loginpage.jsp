<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<title>Seliq - Login Page</title>
<link rel="stylesheet" type="text/css" href="/new/css/login.css">
</head>
<body>
	<main class="body_section">
		<div class="heading">
			<h1>Login to your account</h1>
		</div>
		<form class="fcontainer" action="/new/fc?page=Login&type=model"
			method="POST">

			<div class="row" id="email_box">
				<span class="icon_container"> <img class="icon"
					src="/new/Icons/profile.svg">
				</span> <input type="email"  placeholder="Your email" name="email"
					class="w100">
			</div>

			<div class="row" id="pass_box">
				<span class="icon_container"> <img class="icon"
					src="/new/Icons/forgot.svg">
				</span> <input type="password"  placeholder="Your Password" name="password"
					class="w100">
			</div>
			
				<button type="submit" class="login_button"><p>Login</p></button>
			
		</form>
		<div>
			<span class="s_icon_container forgot_icon"> <img
				class="s_icon" src="/new/Icons/password.svg">
			</span>
			<p>
				<a href="/new/fc?page=forgotPassword&type=view">Forgot
					password?</a>
			</p>
		</div>
		<p>
			Create an account <a href="/new/fc?type=view&page=signup">here</a>
		</p>
	</main>
</body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>