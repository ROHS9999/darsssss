<%-- 
    Document   : destination
    Created on : 24 Mar, 2016, 2:50:54 PM
    Author     : SHIV
--%>
<%
String u = (String)session.getAttribute("name");
if(u != null)
{
%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %>     
<link rel="stylesheet" href="table.css">
        <form action="dest.jsp" id="f1"/>
            Normal::<input type="radio" value="Normal" name="vtype"/>
            Luxury::<input type="radio" value="Luxury" name="vtype"/>
            VIP::<input type="radio" value="VIP" name="vtype"/>
            <input type="text" hidden name="dname" id="dname"/>
            <input type="text" hidden name="dcost" id="dcost"/>
            <div class="contain">
                <table>
                    <tr>
                        <th>Destination</td>
                        <th>Duration</td>
                        <th>Cost</td>
                    </tr>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "select destination, duration, cost from package;";
    ResultSet rs=st.executeQuery(q);
    while(rs.next())
    {               
%>                  
                    <tr>
                        <td id="desname" onclick="change()"><%=rs.getString(1) %></td>
                        <td><%=rs.getString(2) %></td>
                        <td id="descost"><%=rs.getString(3) %></td>
                    </tr>
<%
                        }
%>
                </table>
            </div>
        </form>
            <%@include file="footer.jsp"%>
            <script>
                function change(){
                    var name = document.getElementById("desname").innerHTML;
                    var cost = document.getElementById("descost").innerHTML;
                    
                    document.getElementById("dname").value = name;
                    document.getElementById("dcost").value = cost;
                    this.document.forms.f1.submit();
                }
            </script>
        </body>
    </html>
<%
    }
else
    response.sendRedirect("login.jsp");
%>