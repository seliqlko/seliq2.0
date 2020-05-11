<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@include file="/WEB-INF/fragments/header.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seliq - Home Page</title>
        
    </head>
    <body>

        <main>
            <div class="bulletin">
                <span class="Blogo"></span>
                <div class="news"> News bulletin here </div>
                <span class="cross_logo"></span>
            </div>

            <!--Cover section-->

            <section>
                <div class="cover_section">
                    <div class="cover_img">
                        <div class="overlay">
                            <div class="card_container">
                                <h1>Welcome to SeliQ</h1>
                                <p class="text-muted">Sell anything here.</p>
                                <p class="text-muted">Sell Online Quickly</p>

                                <% if (email == null) {%>
                                <a href="#account" class="get_started" data-toggle="modal" data-target="#signin">
                                    
                                        Create Account
                                    
                                </a><%}%>


                            </div>
                        </div>
                    </div>
                </div>
            </section>


            
            <!--                   Search Tab                  -->
            <section class="tab_section">
                <form class="tab">
                    <select name="category" class="input categorybox">
                        <option value="electronics">Electronics</option>
                        <option value="gadgets">Gadgets</option>
                        <option value="books">Books</option>
                        <option value="households">Households</option>
                        <option value="mobiles">Mobiles</option>
                        <option value="vehicles">Vehicles</option>
                    </select>

                    <input type="text" name="search" class="input searchbox" placeholder="search any product">

                </form>
            </section>
            <!--Categories-->
            <section class="categories">


                <div class="background">
                    <div>
                        <h3>looking for ?</h3>
                    </div>



                    <div class="CT_container">
                        <a href="/new/fc/ab?page=product&type=view">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="icon" src="/new/Icons/kettle.svg" alt="Electronics"/>
                                </div>
                                <div class="title_container">
                                    <div class="info_button">
                                        Electronics
                                    </div>
                                </div>
                            </div>
                        </a>

                        <a href="/new/fc/ab?page=product&type=view">
                            <div class="thumbs">
                                <div class="image_container">
                                    <img class="icon" src="/new/Icons/gadgets.svg" alt="gadgets" />
                                </div>
                                <div class="title_container">
                                    <div class="info_button">
                                        Gadgets
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="/new/fc/ab?page=product&type=view">
                            <div class="thumbs">
                                <div class="image_container">
                                    <img class="icon" src="/new/Icons/households.svg" alt="households" />
                                </div>
                                <div class="title_container">
                                    <div class="info_button">
                                        Households
                                    </div>
                                </div>
                            </div></a>
                        <a href="/new/fc/ab?page=product&type=view">

                            <div class="thumbs">
                                <div class="image_container">
                                    <img class="icon" src="/new/Icons/mobile.svg" alt="mobiles" />
                                </div>
                                <div class="title_container">
                                    <div class="info_button">
                                        Mobiles
                                    </div>
                                </div>
                            </div></a>

                        <a href="/new/fc/ab?page=product&type=view">
                            <div class="thumbs">
                                <div class="image_container">
                                    <img class="icon" src="/new/Icons/bike.svg" alt="vehicles" />
                                </div>
                                <div class="title_container">
                                    <div class="info_button">
                                        Vehicles
                                    </div>
                                </div>
                            </div></a>

                        <a href="/new/fc/ab?page=product&type=view">
                            <div class="thumbs">
                                <div class="image_container">
                                    <img class="icon" src="/new/Icons/other.svg" alt="others" />
                                </div>
                                <div class="title_container">
                                    <div class="info_button">
                                        Other
                                    </div>
                                </div>
                            </div></a>


                    </div>

                </div>

            </section>
            
        </main>
    </body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>