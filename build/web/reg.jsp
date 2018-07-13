<%-- 
    Document   : reg
    Created on : 24 Mar, 2016, 1:51:09 PM
    Author     : SHIV
--%>
<%@ page import="java.sql.*" %>
<%@ page import="javaweb.Hash" %>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    pass = Hash.generateMD5(pass);
    String country = request.getParameter("country");
    String add = request.getParameter("add");
    String pin = request.getParameter("pin");
    String eadd = request.getParameter("eadd");
    String age = request.getParameter("age");
    String contact = request.getParameter("contact");
    String gender = request.getParameter("gender");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "insert into user(name, pass, country, address, pin, email, age, contact, gender) values('"+user+"', '"+pass+"', '"+country+"', "+ "'"+add+"', '"+pin+"', '"+eadd+"', '"+age+"', '"+contact+"', '"+gender+"')";
    int rs = st.executeUpdate(q);
    if(rs == 1)
        response.sendRedirect("login.jsp");
    else
    {
        out.print("<script>alert('Invalid Data');</script>");
        out.print("<script>location.href='register.jsp';</script>");
    }
%>