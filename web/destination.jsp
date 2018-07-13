<%-- 
    Document   : destination
    Created on : 24 Mar, 2016, 2:50:54 PM
    Author     : SHIV
--%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %>     
<style>
    td
    {
background-color:activecaption;      
padding:10px;
 border:1px ridge silver;
 border-radius:5px;
 text-align: center;
    }
    td:hover
    {
        background-color: silver;
        
        box-shadow: inset 1px 2px 1px grey;
                          
        
    }
    th
    {
        padding: 5px;
        
    }
    .contain
    {
        margin:0;
        background-image:url('Bus.jpg');
        background-size: 100% 100%;
        
    }
    .contain table
    {
       margin-left:40%;
    }
    </style>
            <div class="contain">
                <table>
                    <tr>
                        <th>Destination</td>
                        <th>Duration</td>
                        <th>Seats Available</td>
                    </tr>
                    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "select destination, duration, seats from package;";
    ResultSet rs=st.executeQuery(q);
    while(rs.next())
    {               
%>                  
                    <tr>
                        <td><%=rs.getString(1) %></td>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
                    </tr>
<%
                        }
%>
                </table>
            </div>
            <%@include file="footer.jsp"%>
        </body>
    </html>