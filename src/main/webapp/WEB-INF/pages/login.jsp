<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@include file="/WEB-INF/fragments/header.jspf" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:if test="${not empty recovery}">
    <script>
    window.addEventListener("load",function(){
         alert("${recovery}");
    })
    </script>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <title>Seliq - Home Page</title>
        <link rel="stylesheet" type="text/css" href="/new/css/index.css">
        <link rel="stylesheet" type="text/css" href="/new/css/loader.css">
        
    </head>
    <body>
		<script type="text/javascript" src="/new/JS/loader.js"></script>
		<div class="loader">
            <div class="bar bar1 m5"></div>
            <div class="bar bar2 m5"></div>
            <div class="bar bar3 m5"></div>
            <div class="bar bar2 m5"></div>
            <div class="bar bar1 m5"></div>
        </div>
        <main>
            <!--Cover section-->

            <section class="cover_section">
            	<div class="cover_image">
            		<div class="c_container">
            			<div class="c_upper">
            				<h1>Welcome to SeliQ</h1>
            				<p class="text-muted">Sell anything here.</p>
            				<p class="text-muted">Sell Online Quickly</p>
            			</div>
            			<% if (email == null) {%>
            			<div class="c_lower">
            				<div class=buttons_container>
            				
                                <a href="/new/fc?type=view&page=signup">
                                	<button class="c_button signin_button">
                                		<p>Create account</p>
                                	</button>
                                </a>
                                <a href="/new/fc?type=view&page=loginpage">
                                	<button class="c_button login_button">
                                	<p>Login</p>
                                	</button>                 
                                </a>
                             
                          	</div>
                          	<div class="last">
			<span class="s_icon_container forgot_icon">
                <img class="s_icon"src="/new/Icons/password.svg"> 
            </span>
            <p>
                <a href="/new/fc?page=forgotPassword&type=view">Forgot password?</a>
            </p>
		</div>
						</div>
						<%}%>
                    </div>
                </div>
                <div class="wave_container">
                	<img class="wave" src="/new/Images/waves/wave-large.svg">
                </div>
            </section>


            
            <!--                   Search Tab                  -->
            <section class="searchbox_section">
            	<div class="outer">

    <div class="searchbar">
        
        <div class="search_text">
            Search
        </div>
                <form class="searchbox_container">
                    <input type="search" name="search" class="searchbox" placeholder="Any product">
                </form>
                <div class="search_icon_container">
        <div class="search_icon"></div>
        </div>
                </div>
                </div>
            </section>
            <!--Categories-->
            <section class="categories_section">
            	<div class="ct_header">
            		<p>What are you looking for ?</p>
            	</div>
            	<div class="ct_container">
                        <a href="/new/fc?page=product&type=view&category=households">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/households.jpg" alt="Households"/>
                                </div>
                                <div class="t_button">
                                <p>Households</p>
                                <div class="inner_span"></div>
                                </div>
                                
                            </div>
                        </a>
                        <a href="/new/fc?page=product&type=view&category=fashion">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/fashion.jpg" alt="Fashion"/>
                                </div>
                                <div class="t_button"><p>Fashion</p>
                                	<div class="inner_span"></div>
                                </div>
                            </div>
                        </a>
                        <a href="/new/fc?page=product&type=view&category=books">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/books.jpg" alt="Books"/>
                                </div>
                                <div class="t_button">
                                	<p>Books</p>
                                	<div class="inner_span"></div>	
                                </div>
                            </div>
                        </a>
                        <a href="/new/fc?page=product&type=view&category=electronics">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/electronics.jpg" alt="Electronics"/>
                                </div>
                                <div class="t_button">
                                	<p>Electronics</p>
                                	<div class="inner_span"></div>
                                </div>
                            </div>
                        </a>
                        <a href="/new/fc?page=product&type=view&category=gadgets">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/gadgets.jpg" alt="Gadgets"/>
                                </div>
                                <div class="t_button">
                                	<p>Gadgets</p>
                                	<div class="inner_span"></div>
                                </div>
                            </div>
                        </a>
                        <a href="/new/fc?page=product&type=view&category=mobiles">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/mobiles.jpg" alt="Mobiles"/>
                                </div>
                                <div class="t_button">
                                	<p>Mobiles</p>
                                	<div class="inner_span"></div>
                                </div>
                            </div>
                        </a>

                        <a href="/new/fc?page=product&type=view&category=vehicles">
                            <div class="thumbs">
                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/vehicles.jpg" alt="Vehicles" />
                                </div>
                                <div class="t_button">
                                 	<p>Vehicles</p>
                                 	<div class="inner_span"></div>
                                </div>
                            </div></a>
                         <a href="/new/fc?page=product&type=view&category=others">
                            <div class="thumbs">

                                <div class="image_container">
                                    <img class="thumb_background" src="/new/Images/other.jpg" alt="Other"/>
                                </div>
                                <div class="t_button">
                                <p>Other</p>
                                <div class="inner_span"></div>
                                </div>
                                
                            </div>
                        </a>
					
                    </div>


            </section>
            
        </main>
    </body>
</html>
<%@include file="/WEB-INF/fragments/footer.jspf" %>