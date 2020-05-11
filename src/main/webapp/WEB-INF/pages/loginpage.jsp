<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@include file="/WEB-INF/fragments/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Seliq - Login Page</title>
        <link rel="stylesheet" type="text/css" href="/new/css/login.css">
    </head>
    <body>
        <main>
            <div class="body_section">

                <div class="headings">
                    <h2>Login to your account</h2>

                </div>

                <form class="f_container" action="/new/fc/?page=Login&type=model" method="POST">

                    <div class="caption">Email</div>
                    <div class="row">
                        <input type="email" placeholder="Enter your email" name="email" class="textbox w100">
                    </div>


                    <div class="caption">Password</div>
                    <div class="row">
                        <input type="password" placeholder="Enter Password" name="password" class="textbox w100">

                    </div>


                    <button type="submit" class="button submit_button">Login</button>

                    <%--<submit>
                        <input class="submit_button" type="button" value="Submit">

                            </submit>--%>
                    <div class="form-group">
                        <a href="/new/fc/ab?page=forgotPassword&type=view">Forgot Your Password</a>
                    </div>

                    <p>Create an account <a data-toggle="modal" data-target="#signin">here</a></p>
                </form>
            </div>





        </main>
    </body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>