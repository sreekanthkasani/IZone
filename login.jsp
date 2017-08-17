<%-- 
    Document   : login
    Created on : Jul 13, 2017, 7:28:40 PM
    Author     : sreekanth kasani  ')
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
    <body>
        <div class="login-container">
            <section class="login" id="login">
                <header>
                    <h2><img src="images/IZlogo_l.jpg" alt="IdeaZone" style="width:314px;margin-bottom: 0px;"></h2>
                    <h4>Login</h4>
                </header>
                <form class="login-form" action="HybridHandler.jsp" method="post" onsubmit="<% session.setAttribute("postType","login"); %>">
                    <input type="text" class="login-input" placeholder="User" name="User" required autofocus/>
                    <input type="password" class="login-input" placeholder="Password" name="Password" required/>
                    <div class="submit-container">
                        <button type="submit" class="login-button">SIGN IN</button>
                    </div>
                </form>
            </section>
            <center><a href="register.jsp" style=" text-decoration: none;"> <p style="font-family:cursive;font-size: 20px;margin-top: 0px;">::join to explore::</p></a></center>
        </div>
    </body>
</html>
