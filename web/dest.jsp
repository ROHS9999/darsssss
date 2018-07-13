<%-- 
    Document   : dest
    Created on : 26 Mar, 2016, 3:55:48 PM
    Author     : SHIV
--%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %>
<%
String u = (String)session.getAttribute("name");
if(u != null)
{
%>
<form action="booking.jsp" id="f1">
<table>
    <tr>
        <td>Vehicle Name</td>
        <td>Vehicle Cost</td>
        <td>Select</td>
    </tr>
<%
    String vtype = request.getParameter("vtype");
    String dname = request.getParameter("dname");
    String dcost = request.getParameter("dcost");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "select * from vehicle where vtype='"+vtype+"';";
    ResultSet rs=st.executeQuery(q);
    while(rs.next())
    {
%>
<tr>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(4)%></td>
    <td><input type="radio" name="vehicle" value="<%=rs.getString(2)%>" onclick="f1_sub()"/></td>
    <input type="text" hidden name="type" value="<%=dname%>"/>
    <input type="text" hidden name="cost" value="<%=dcost%>"/>
</tr>
<%}
%>
</table>
</form>
<script>
    function f1_sub(){
        this.document.forms.f1.submit();
    }
</script>
<%@include file="footer.jsp" %> 
</body>
</html>
<%
    }
else
    response.sendRedirect("login.jsp");
%>