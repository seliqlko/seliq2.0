<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/new/css/signup.css">

<script src="/new/JS/jquery-3.5.1.min.js"></script>
<script src="/new/JS/check.js"></script>
<title>Seliq - Signup</title>
<!--    Fonts-->
</head>
<body>
	<!--  Sign in   -->
	<main class="body_section">
		<div class="fcontainer">
			<div class="gradient2"></div>
			<div class="gradient1"></div>
			<div class="content">
				<div class="fheader">
					<h2>Create your account</h2>
					<p>
						Already have an account ? <a
							href="/new/fc?type=view&page=loginpage">Login</a>
					</p>
				</div>

				<form class="inner_container" id="form"
					action="/new/fc?page=Registration&type=model" method="POST">

					<div class="row">
						<div class="caption">Name</div>

						<input type="text" name="firstname" placeholder="First name"
							class="w50"> <input type="text" name="lastname"
							placeholder="Last name" class="w50">
					</div>

					<div class="row">
						<div class="caption">Email</div>
						<input type="email" id="fid" name="email"
							placeholder="Enter your email" class="w100"
							onblur="acaller('fid', 'sid')"> <span id="sid"></span>
					</div>

					<div class="row">

						<div class="caption">Mobile Number</div>
						<input type="number" name="phone"
							placeholder="Enter your mobile number" class="w100">

					</div>

					<div class="row">
						<div class="caption">Password</div>
						<input type="password" name="password"
							placeholder="Enter Password" class="w50" id="idpassword"> <input
							type="password" name="password2" placeholder="Confirm Password"
							class="w50">

					</div>

					<button type="submit" class="button" disabled="false">
					<p>Submit</p>
					</button>
				</form>
				
			</div>
		</div>




	</main>

</body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>