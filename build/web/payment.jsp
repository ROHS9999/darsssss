<%
String u = (String)session.getAttribute("name");
if(u != null)
{
%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %> 
<% String name=request.getParameter("n");
   String type=request.getParameter("type");
   String cost=request.getParameter("cost");
   String doj=request.getParameter("date");
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "insert into booking(uid,doj) values('"+name+"','"+doj+"');";
    int rs=st.executeUpdate(q);
    if(rs==1)
    {
    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st1= con1.createStatement();
    String q1 = "insert into payment(uid,amt) values ('"+name+"','"+cost+"');";
    int rs1=st1.executeUpdate(q1);
    if(rs1==1)
    {
%>
<div><h1>Payment Successful..!!</h1></div>
<%
    }
    else
    {
        out.print("<script>alert('Database Error');</script>");
        out.print("<script>location.href='index.jsp';</script>");
    }
    }
    else
    {
        out.print("<script>alert('Database Error');</script>");
        out.print("<script>location.href='index.jsp';</script>");
    }
%>
<%@include file="footer.jsp" %> 
<%
    }
else
    response.sendRedirect("login.jsp");
%>