<%@include file="header.jsp" %>
<%@include file="nav.jsp" %>
<div class="contact-container" style="margin: auto;" >
           <form name="feedback" method="post" action="feed.jsp">
               
                    <div class="contact-left">
                        <div class="contact-elements" >
                        Name<input type="text" name="name" size="50" placeholder="Enter Name.."><br><br>
                        Contact-address<input type="text" name="address" size="50" placeholder="Enter phone Number..."><br><br>
                        Email-Address<input type="email" name="e_address" size="50" placeholder="Enter mail address.. "><br><br>
                        Contact-number<input type="text" size="50" name="c_number" placeholder="Enter contact number.. "><br><br>
                        Comments<textarea cols="53" rows="5" name="coment" placeholder="comment here.."></textarea><br><br>
                        <button name="button" value="submit" class="bt" style="margin-left: 40%;margin-top: 10%;">Submit</button>
                        <button name="button" value="reset" class="bt" >Reset</button>
                        
                        </div>
                    </div>
           </form>
</div>

     <%@include file="footer.jsp" %>
     