<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %>     
<%@ page import="java.sql.*" %>
<style>
    .p1:hover
    {
        color:blue;
        transform:rotate(10deg);
        background-image:none;
        
    }
    .an
    {
        animation:ani 1s ease-in infinite;
    }
    @-webkit-keyframes ani
    {
        0%{color:red;}
        50%{color:white;}
        100%{color:appworkspace;}
        
    }
    .st
    {
        background-color:transparent;
        color:white;
        text-shadow:1px 1px 1px black;
        font-size: 1.5vw;
        height:20%;
        width:100%;
        text-align: center;
    }
    
</style>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/updarshan","root","root");
    Statement st = con.createStatement();
    String q = "select type, cost, vehicle from packagetype;";
    ResultSet rs=st.executeQuery(q);
    while(rs.next())
    {
        if(rs.getString(1).equals("general")){
%>
<div>
<div class="p1" onclick="document.forms.frm1.submit()" style=" background-image: url('agra.jpg');background-size: 100% 100%;height:30%;width:30%;margin-left:5%;cursor:pointer;padding:0;background-color:whitesmoke;position:absolute;border:1px ridge black;border-radius:10px;text-align: center ;">
    <form action="booking.jsp" id="frm1">
    <h1 class="an" id="t"><%=rs.getString(1)%></h1>
    <span class="st">
    Rs=<span id="r"><%=rs.getString(2)%></span><br>
    vehicle is <span id="v"><%=rs.getString(3)%></span><br>
    <span><img src="book5.jpg" height="10%" width="30%" style="border-radius:10px;"></span>
    </span>
    <input type="text" name="type" value="<%=rs.getString(1)%>" hidden/>
    <input type="text" name="cost" value="<%=rs.getString(2)%>" hidden/>
    <input type="text" name="vehicle" value="<%=rs.getString(3)%>" hidden/>
    </form>
</div>
<% }
    else if(rs.getString(1).equals("special")){
%>
<div  class="p1"  onclick="document.forms.frm2.submit()" style="background-image: url('imambara.jpg');background-size: 100% 100%;height:30%;width:30%;margin-left:36%;cursor:pointer;padding:0;background-color: whitesmoke;position:absolute;border:1px ridge black;border-radius:10px;text-align: center ;">
    <form action="booking.jsp" id="frm2">
    <h1 class="an" id="t"><%=rs.getString(1)%></h1>
    <span class="st">
    Rs=<span id="r"><%=rs.getString(2)%></span><br>
    Vehicle is <span id="v"><%=rs.getString(3)%></span><br>
    <span><img src="book5.jpg" height="10%" width="30%" style="border-radius:10px;"></span>
    </span>
    <input type="text" name="type" value="<%=rs.getString(1)%>" hidden/>
    <input type="text" name="cost" value="<%=rs.getString(2)%>" hidden/>
    <input type="text" name="vehicle" value="<%=rs.getString(3)%>" hidden/>
    </form>
</div>
<%}
else if(rs.getString(1).equals("DELUXE")){
%>
<div class="p1" onclick="document.forms.frm3.submit()" style="background-image: url('fatehpur.jpg');background-size: 100% 100%;height:30%;width:30%;cursor:pointer;margin-left:67%;padding:0;background-color: whitesmoke;border:1px ridge black; border-radius:10px;text-align: center;">
    <form action="booking.jsp" id="frm3">
    <h1 class="an"><%=rs.getString(1)%></h1>
    <span class="st">
    Rs=<span><%=rs.getString(2)%></span><br>
    Vehicle is <span><%=rs.getString(3)%></span><br>
    <span><img src="book5.jpg" height="10%" width="30%" style="border-radius:10px;"></span>
    </span>
    <input type="text" name="type" value="<%=rs.getString(1)%>" hidden/>
    <input type="text" name="cost" value="<%=rs.getString(2)%>" hidden/>
    <input type="text" name="vehicle" value="<%=rs.getString(3)%>" hidden/>
    </form>
</div>
</div>
<%
    }}
%>
            <%@include file="footer.jsp"%>
        </body>
    </html>