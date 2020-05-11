<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/fragments/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Reset Password </title>
        <link rel="stylesheet" type="text/css" href="/new/css/email_page.css">

    </head>
    <body>
        <main>
            <div class="body_section">
                <div class="headings">
                    <p>Enter your email. </p>
                    <p>We will send the link to reset the password.</p>
                </div>

                <form class="f_container" action="/new/fc/ab?page=ForgetPassword&type=model" method="POST">

                    <div class="caption">Email</div>

                    <div class="row">
                        <input type="email" id="email" name="email" placeholder="Enter your email" class="textbox w100">
                    </div>

                    <%--<submit>
                        <input class="button" type="button" value="Send link">


                                </submit>--%>
                    <button type="submit" class="submit_button button">Send Link</button>

                </form>
            </div>

        </main>
    </body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>