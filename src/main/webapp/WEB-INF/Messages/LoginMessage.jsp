<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>${requestScope.message}</h1>
        <form method="POST" action="fc?page=ImageUpload&type=model" enctype="multipart/form-data">
            <input type="file" name="file"/>
            <input type="submit" name="upload"/>
        </form>
    </body>
</html>
