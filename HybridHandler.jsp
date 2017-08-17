<%-- 
    Document   : validateLogin
    Created on : Jun 19, 2017, 6:54:56 PM
    Author     : sreekanth kasani  ')
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>authenticateLogin</title>
    </head>
    <body>

        <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.sql.DriverManager.*" %>
        <%
            String post_type = (String) session.getAttribute("postType");
            PreparedStatement ps;
            Connection conn;
            ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iZone", "root", "root");
            out.println("connected to database");

            Statement st = conn.createStatement();
        %> 
        <%
            int queryStatus = 0;
            String name = null;
            String password = null;
            String userType = null;
            String email = null;
            String mobile = null;
            String password1 = null;
            String ar = null;
            int id = 0;
            String title = null;
            String desc = null;
            boolean aflag = false, flag = false;
            if (post_type.equals("login")) {
                name = request.getParameter("User");
                password = request.getParameter("Password");
            } else if (post_type.equals("register")) {
                name = request.getParameter("uname");
                password = request.getParameter("pass1");
                password1 = request.getParameter("pass2");
                email = request.getParameter("email");
            } else {
                name = session.getAttribute("sUser").toString();
                id = Integer.parseInt(session.getAttribute("sId").toString());
                title = request.getParameter("Ititle");
                desc = request.getParameter("Idesc");
            }


        %>

        <%            String sql;
            if (post_type.equals("login")) {
                sql = "select * from innovators where uname=? and password =?";
            } else if (post_type.equals("register")) {
                sql = "insert into innovators(uname,password,email) values(?,?,?)";
            } else {
                sql = "insert into ideabase values(?,?,?,?,?)";
            }

            try {
                ps = conn.prepareStatement(sql);
                if (post_type.equals("login")) {
                    ps.setString(1, name);
                    ps.setString(2, password);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        session.setAttribute("sUser", rs.getString("uname"));
                        session.setAttribute("sId", rs.getString("uid"));
                        flag = true;
                    }
                } else if (post_type.equals("register")) {
                    ps.setString(1, name);
                    ps.setString(2, password);
                    ps.setString(3, email);
                    queryStatus = ps.executeUpdate();
                } else {
                    ps.setInt(1, id);
                    ps.setString(2, name);
                    ps.setString(3, title);
                    ps.setString(4, desc);
                    ps.setString(5, "0");
                    queryStatus = ps.executeUpdate();
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>


        <%
            if (flag) {
        %>
        <jsp:forward page="ideaBase.jsp" />
        <%}else if (queryStatus > 0) {
        %>
        <jsp:forward page="ideaBase.jsp" />
        <%}else {%>
        <jsp:forward page="login.jsp" />
        <%}%>
    </body>
</html>