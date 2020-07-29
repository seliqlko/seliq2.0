<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<title>Seliq-Reset Password</title>
<link rel="stylesheet" type="text/css" href="/new/css/email_page.css">
</head>
<body>
	<main class="body_section">
		<div class="fheader">
			<p>Enter your email.</p>
			<p>We will send the link to reset the password.</p>
		</div>

		<form class="fheader"
			action="/new/fc?page=ForgetPassword&type=model" method="POST">

			<div class="row">
				<span class="icon_container"> <img class="icon"
					src="/new/Icons/email.svg">
				</span> <input type="email" id="email" name="email"
					placeholder="Enter your email">
			</div>
			<button type="submit" class="button"><p>Send Link</p></button>

		</form>
	</main>
</body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>