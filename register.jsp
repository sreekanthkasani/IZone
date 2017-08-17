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
                    <h4>::signUp::</h4>
                </header>
                <form class="login-form" action="HybridHandler.jsp" method="post" onsubmit="<% session.setAttribute("postType","register"); %>">
                    <input type="text" class="login-input" placeholder="User" name="uname" required autofocus/>
                    <input type="password" class="login-input" placeholder="Password" name="pass1" required/>
                    <input type="password" class="login-input" placeholder="Confirm Password" name="pass2" required/>
                    <input type="email" class="login-input" placeholder="Email" name="email" required/>
                    <div class="submit-container">
                        <button type="submit" class="login-button">SIGN UP</button>
                    </div>
                </form>
            </section>
            <center><p style="font-family:cursive;font-size: 20px;margin-top: 0px;">::Register -- Explore::</p></center>
        </div>
    </body>
</html>
