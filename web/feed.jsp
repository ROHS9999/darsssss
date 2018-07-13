<%-- 
    Document   : reg
    Created on : 24 Mar, 2016, 1:51:09 PM
    Author     : SHIV
--%>
<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String e_address = request.getParameter("e_address");
    String c_number = request.getParameter("c_number");
    String comment = request.getParameter("comment");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "insert into feedback(name, address, e_address, c_number, comment) values('"+name+"', '"+address+"', '"+e_address+"', "+c_number+ ", '"+comment+"')";
    int rs = st.executeUpdate(q);
    if( rs==1)
        response.sendRedirect("index.jsp");
    else
    {
        out.print("<script>alert('Error!!!');</script>");
        out.print("<script>location.href='index.jsp';</script>");
    }
%>