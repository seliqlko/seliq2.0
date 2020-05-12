<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>
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
		<div class="body_section">

			<div class="fcontainer">

				<div class="upper_block">
					<div class="picture_container">
						<img class="profile_picture" src="/new/Images/profile_picture.jpg">
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

</body>

</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>