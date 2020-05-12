<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/fragments/header.jspf"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="/new/css/add_item.css">
<title>Seliq - Add Item</title>
</head>

<body>

	<main class="body_section">
		<div class="heading">
			<h1>Add your item</h1>
		</div>

		<form class="fcontainer">
			<div class="row">
				<div class="caption">Product Title</div>
				<input type="text" placeholder="Enter the product title"
					class="w100">
			</div>
			<div class="row">
				<div class="caption">Product Description</div>
				<textarea rows="6" class="desc_box w100"></textarea>
			</div>
			<div class="row">
				<div class="caption">Add image</div>
				<input type="file" accept="image" />
			</div>
			<input class="button" type="button" value="Upload">
		</form>

	</main>
</body>

</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>