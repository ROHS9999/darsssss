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
    Statement st2 = con.createStatement();
    String q = "select * from user where name='"+user+"';";
    ResultSet rs=st.executeQuery(q);
    String q1="select * from packagetype  ; ";
    ResultSet rs2=st2.executeQuery(q1);
    if(rs.next()&&rs2.next())
    {  
%>
<form action="payment.jsp">
     <div class="contact-left">
                        <div class="contact-elements">
                            <table border="0" align="center" padding="5px" cellspacing="5px">
                                <tr>
                        <td>Name::<td><p name="n"><%=rs.getString(1)%></p></td></td>
                        </tr>
                        <tr>
                        <td>User-Address::<td><p name="ua"><%=rs.getString(4)%></p></td></td>
                        </tr>
                        <tr>
                        <td>Email-Address::<td><p name="ea"><%=rs.getString(6)%></p></td></td>
                        </tr>
                        <tr>
                       <td> Booked-Package::<td><p name="bp"><%=rs2.getString(2)%></p></td></td>
                       </tr>
                       <tr>
                       <td> Your-vehicle::<td><p name="vehicle"><%=rs2.getString(4)%></p></td></td>
                       <tr>
                       <td> Package-cost::<td><p name="cost"><%=rs2.getString(3)%></p></td></td>
                       </tr>
                       <tr>
                           <td> Date of journey::<td><input type="date" name="date"></td></td>
                           </tr>
                           <tr>
                               <td colspan="2">  <button name="button" value="submit" class="bt" type="submit" style="margin-left: 40%;">Pay-Now</button></td>
                               </tr>
                            </table>
                        </div>
                    </div>
</form>
                        <% }
                        
else if(rs2.getString(2).equals("special"))
{%>

<form action="payment.jsp">
     <div class="contact-left">
                        <div class="contact-elements">
                        Name<p name="n"><%=rs.getString(1)%></p><br><br>
                        User-Address<p name="ua"><%=rs.getString(4)%></p><br><br>
                        Email-Address<p name="ea"><%=rs.getString(6)%></p><br><br>
                        Booked-Package<p name="bp"><%=rs2.getString(2)%></p><br><br>
                        Your-vehicle<p name="vehicle"><%=rs2.getString(4)%></p><br><br>
                        Package-cost<p name="cost"><%=rs2.getString(3)%></p><br><br>
                        Date of journey<input type="month" name="date">
                        <button name="button" value="submit" class="bt" type="submit" style="margin-left: 40%;margin-top: 10%;">Pay-Now</button>
                        
                        </div>
                    </div>
</form>
<%}

                        %>
                        
 <%@include file="footer.jsp" %>
          </body>
              </html>
<%
    }
else
    response.sendRedirect("login.jsp");
%>