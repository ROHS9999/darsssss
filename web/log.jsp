<%-- 
    Document   : log
    Created on : 24 Mar, 2016, 1:14:19 PM
    Author     : SHIV
--%>
<%@ page import="java.sql.*" %>
<%@ page import="javaweb.Hash" %>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    pass = Hash.generateMD5(pass);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "Select * from user where name='"+user+"' and pass='"+pass+"';";
    ResultSet rs = st.executeQuery(q);
    if(rs.next())
    {
        session.setAttribute("name",user);
        response.sendRedirect("tours.jsp");
    }
    else
    {
        out.print("<script>alert('Invalid Username or Password');</script>");
        out.print("<script>location.href='login.jsp';</script>");
    }
%>