<%-- 
    Document   : ideaBase
    Created on : Jul 14, 2017, 6:24:04 PM
    Author     : sreekanth kasani  ')
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IdeaBase</title>
        <link rel="stylesheet" type="text/css" href="css/ibase.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body style="height: 964px;">
        <%@page language="java" %>
        <%@page import="java.sql.*" %>
        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.util.*" %>
        <%
            String name=session.getAttribute("sUser").toString();
            int id = Integer.parseInt(session.getAttribute("sId").toString());
            ResultSet rs = null;
            Statement st = null;
            Connection conn = null;
            String driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String pass = "root";
            String address = "jdbc:mysql://localhost:3306/iZone";
            Class.forName(driver);
            conn = DriverManager.getConnection(address, user, pass);
            st = conn.createStatement();
            String query = "select * from ideaBase";
            try {
                rs = st.executeQuery(query);
            } catch (SQLException se) {
                System.err.print(se);
            }
        %>
        <header class='header' style="background: #01081a;">
            <div class="container clearfix">
                <h1 id="logo">
                         <img src="images/IZlogo_l.jpg" alt="LOGO"/>
                </h1>
                <nav>
                    <a href="myIdeas.jsp?id=<%= id %>">MyIdeas</a>
                    <a href="addIdea.jsp">addIdea</a>
                    <a href="login.jsp">logOut</a>
                </nav>
            </div>
        </header>
        <br><br><br><br><br><br><br><br><br>

        <%if (rs.next()) {%>
        <%do {%>
        <div class="main" style="margin-top: 10px;"> 
            <img class="user-pic" src="http://placehold.it/250x150" alt="projImg">
            <div class="contact-box">
                <h4 class="user-name">:<%=rs.getString("title")%></h4>
                <ul class="user-contact">
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("description")%>&nbsp;&nbsp;&nbsp;&nbsp;</li>    
                </ul>
            </div>
        <h5 style="margin-top: 39px;">&nbsp;<img src="images/prof.png" alt=".."><%=rs.getString("uname")%></h5>
        </div>
        <%} while (rs.next());
            } else {%>
    <center><h1 style="font-family: cursive;">no !deas yet....!<br>!deaBase is  void()</h1></center>
            <%}%>
</body>
</html>
