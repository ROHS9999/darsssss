<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %>     
            <div class="contain">
                <div class="login-block">
                     <div class="logo">
                     <div class="login">Login & make your trip...</div>
  <div class="logo2"><img src="2key.png" height="100px" width="100px"></div>
                     </div>
                    <form action="log.jsp">
                        <input type="text" name="user" value="" placeholder="Username" id="username" />
    <input type="password" value="" placeholder="Password" name="pass" id="password" />
    <button>Submit</button></form>
    <a href='http://localhost:8084/project/register.jsp' id="reg">Register now....</a>
</div>
            </div>
            <%@include file="footer.jsp"%>
        </body>
    </html>