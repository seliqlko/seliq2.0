<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/fragments/header.jspf" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" type="text/css" href="/new/css/add_item.css">
        <title>Seliq - Add Item Page</title>
    </head>

    <body>
      
    <main>
        <div class="body_section">

            <div class="headings">
                <h2>Add your item</h2>
            </div>

            <form class="f_container">

                <div class="caption">Product Title</div>

                <div class="row">
                    <input type="text" class="textbox w100">
                </div>

                <div class="caption">Product Description</div>

                <div class="row">
                    <textarea rows="5" class="desc_box w100">
                        
                    </textarea>
                </div>

                <div class="caption">Add image</div>

                <div class="row">
                    <input type="file" accept="image"/>
                </div>


                <input class="button" type="button" value="Upload">


            </form>
        </div>

    </main>

</body>

</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>