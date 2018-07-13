<style>
    .contact-elements
    {
        background-color: white;
        padding:0;
    }
   </style>
<%
String u = (String)session.getAttribute("name");
if(u != null)
{
%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %> 
<% String user = (String)session.getAttribute("name");
   String type=request.getParameter("type");
   String cost=request.getParameter("cost");
   String vehicle=request.getParameter("vehicle");
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "select * from user where name='"+user+"';";
    ResultSet rs=st.executeQuery(q);
    if(rs.next())
    {  
%>
<form action="payment.jsp">
     <div class="contact-left">
                        <div class="contact-elements">
                            <table border="0" align="center" padding="5px" cellspacing="5px">
                                <tr>
                        <td>Name::<td><p><%=user%></p></td></td>
                        </tr>
                        <tr>
                        <td>User-Address::<td><p name="ua"><%=rs.getString(4)%></p></td></td>
                        </tr>
                        <tr>
                        <td>Email-Address::<td><p name="ea"><%=rs.getString(6)%></p></td></td>
                        </tr>
                        <tr>
                       <td> Booked-Package::<td><p name="bp"><%=type%></p></td></td>
                       </tr>
                       <tr>
                       <td> Your-vehicle::<td><p name="vehicle"><%=vehicle%></p></td></td>
                       <tr>
                       <td> Package-cost::<td><p name="cost"><%=cost%></p></td></td>
                       </tr>
                       <tr>
                           <td> Date of journey::<td><input type="date" name="date"></td></td>
                       </tr>
                           <tr>
                               <td colspan="2"><button name="button" value="submit" class="bt" type="submit" style="margin-left: 40%;">Pay-Now</button></td>
                               </tr>
                            </table>
                        </div>
                    </div>
                    <input type="text" name="type" value="<%=type%>" hidden/>
                    <input type="text" name="cost" value="<%=cost%>" hidden/>
                    <input type="text" name="vehicle" value="<%=vehicle%>" hidden/>
                    <input type="text" name="n" value="<%=user%>" hidden/>
</form>
<% }
%>                        
<%@include file="footer.jsp" %>
          </body>
              </html>
<%
    }
else
    response.sendRedirect("login.jsp");
%>