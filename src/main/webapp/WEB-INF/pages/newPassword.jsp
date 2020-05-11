<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@include file="/WEB-INF/fragments/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <title>SELIQ- Password Reset Page</title>
        <link rel="stylesheet" type="text/css" href="/new/css/password_reset.css">

    </head>
    <body>

        <main>
            <div class="body_section">
                <div class="headings">
                    <p>Enter your new password</p>
                </div>

                <form class="f_container" action="/new/fc/ab?type=model&page=Update&email=<%=request.getParameter("email").toString()%>" method="POST">

                    <div class="caption">New password</div>

                    <div class="row">
                        <input type="text" name="passwd" class="textbox w100">
                    </div>

                    <div class="caption">Confirm password</div>

                    <div class="row">
                        <input type="text" class="textbox w100">
                    </div>
                    <button type="submit" class="submit_button button">Reset</button>
                </form>
            </div>

        </main>

    </body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>