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

		<form class="fcontainer" action="addItem" method="POST" enctype="multipart/form-data">
			<div class="row">
				<div class="caption">Product Title</div>
				<input type="text" placeholder="Enter the product title" name="product_name"
					class="w100">
			</div>
			<div class="row">
				<div class="caption">Product Description</div>
				<textarea rows="6" class="desc_box w100" name="product_description"></textarea>
			</div>
			<div class="row">
				<div class="caption">Product Price</div>
				<input type="number" placeholder="Enter the product price" name="product_price"
					class="w100">
			</div>
			<div class="row">
				<div class="caption">Product Category</div>
				<select id="product_category" class="form-control" name="product_category" class="w100">
					<option value="electronics">Electronics</option>
					<option value="gadgets">Gadgets</option>
					<option value="households">Households</option>
					<option value="fashion">Fashion</option>
					<option value="books">Books</option>
					<option value="mobiles">Mobiles</option>
					<option value="vehicles">Vehicles</option>
					<option value="Other">Others</option>
				</select>
			</div>
			<div class="row">
				<div class="caption">Add image</div>
				<input type="file" accept="image" name="photo" />
			</div>
			<input class="button" type="submit" value="Upload">
		</form>

	</main>
</body>

</html>
<%@include file="/WEB-INF/fragments/footer.jspf"%>