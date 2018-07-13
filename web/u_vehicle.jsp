<%@ page import="java.sql.*" %>
<%
    String name=request.getParameter("name");
    String type=request.getParameter("type");
    String cost=request.getParameter("cost");
    String tname=request.getParameter("tname");
    String q="";
    if(tname.equals("vehicle"))
        q="insert into vehicle(vname,vtype,price)values('"+name+"','"+type+"','"+cost+"');";
    else if(tname.equals("package"))
        q="insert into package(destination,duration,cost)values('"+name+"','"+type+"','"+cost+"');";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    int rs=st.executeUpdate(q);
    if(rs == 1)
    {
        out.print("<script>alert('Updation Successful');</script>");
        out.print("<script>location.href='Admin_pannel.jsp';</script>");
    }
    else{
        out.print("<script>alert('Database Error..!!');</script>");
        out.print("<script>location.href='Admin_pannel.jsp';</script>");
    }
%>