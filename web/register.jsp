<html>
    <head>
        <title>Registration</title>
        <link rel="stylesheet" href="reg.css">
        </head>
        <script>
            
        </script>
       <body>
            <%@ include file="header.jsp" %>
            <%@ include file="nav.jsp" %>
           <div class="container">
               <div class="content">
                   <form name="reg" action="reg.jsp" method="post">
                       <div class="top">
                           <div class="left">
                             Register Now...
                           </div>
                       </div>
                       <div class="data1">
                           <form action="reg.jsp">
                           <input type="text" size="20" name="user" placeholder="User Name.." id="user"> 
                           <select class="selection" name="country">
                               <option>Select Country</option>
                               <option>India</option>
                               <option>Pak</option>
                               <option>Nepal</option>
                           </select>
                       </div>
                       <div class="data2">
                           <input type="password" size="50" name="pass" placeholder="Password.." id="pas1"></br></br>
                           <input type="password"  size="50" name="pass2" placeholder="Retype password.." id="pas2">
                           
                       </div>
                       <div class="data3">
                           <fieldset>
                               <legend>Personal Data</legend>
                               <input type="text" size="30" name="add" placeholder="Home Address..">
                               <input type="text" size="10" name="pin" placeholder="Pin">
                               <br><br>
                               <input type="email" size="30" name="eadd" placeholder="Email-Address..">
                               <input type="text" size="10" name="age" placeholder="Age">
                               <br><br>
                               <input type="text" size="30" name="contact" placeholder="Contact Number..">
                               <select name="gender">
                                   <option>Gender</option>
                                   <option>Male</option>
                                   <option>Female</option>
                               </select>
                           </fieldset>
                       </div>
                       <div class="data4">
                           <input type="checkbox" value="yes">I'm not a robot</input>
                        <br>
                        <input type="checkbox" value="yes">Accept the term & Policy</input>
                        <br>
                        
                       </div>
                       <div class="data5">
                           <input type="Submit" value="Submit">
                           <button value="Reset">Reset</button>
                       </div>
                       </form>
               </div>
               </div>
           <%@ include file="footer.jsp" %>
       </body>
    </html>
    