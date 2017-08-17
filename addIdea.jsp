<%-- 
    Document   : addIdea
    Created on : Jul 14, 2017, 8:17:28 PM
    Author     : sreekanth kasani  ')
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::addIdea::</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/addIdea.css">
        <style>
            .feedback-input{
                color:#0b0b0b;
            }
        </style>
    </head>
    <body>
        <header class='header' style="background: #01081a;">
            <div class="container clearfix">
                <h1 id="logo">
                    <img src="images/IZlogo_l.jpg" alt="LOGO"/>
                </h1>
                <nav>
                    <a href="ideaBase.jsp">Home</a>
                    <a href="myIdeas.jsp">MyIdeas</a>
                    <a href="login.jsp">logOut</a>
                </nav>
            </div>
        </header>
        <br><br><br><br><br><br><br><br><br>


        <form action="HybridHandler.jsp" method="post" onsubmit="<% session.setAttribute("postType", "addIdea");%>">      
            <input name="Ititle" type="text" class="feedback-input" placeholder="Title" />  
            <textarea name="Idesc" class="feedback-input" placeholder="Description (should be minimum of 30 words)"></textarea>
            <input type="submit" value="SUBMIT"/>
        </form>
    </body>
</html>
