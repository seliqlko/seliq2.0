<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@include file="/WEB-INF/fragments/header.jspf" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" type="text/css" href="/new/css/profile.css">
        <title>Seliq - My Account Page</title>
    </head>

    <body>
        <%
            String lname = (String) session.getAttribute("last_name");
            String phone = (String) session.getAttribute("phone");
            String fname = (String) session.getAttribute("first_name");
        %>

        <main>
            <div class="body_section">

                <div class="profile_container">

                    <div class="pp_block">

                        <img class="profile_picture" src="/new/Images/profile.jpg">
                        <div class="name">
                            <p><%=fname%> <%=lname%></p>
                        </div>

                    </div>

                    <div class="info_block">

                        <div class="email line">

                            <p class="title">Email :</p>
                            <p class="value"><%=email%></p>

                        </div>
                        <div class="m_number line">

                            <p class="title">Mobile Number :</p>
                            <p class="value"><%=phone%></p>

                        </div>



                    </div>

                </div>
            </div>
        </main>

    </body>

</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>