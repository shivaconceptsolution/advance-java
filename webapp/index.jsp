<%@include file="header.jsp" %>
<div id="middle">
<h1>Welcome in JSP Web Page</h1>
<center>
<h3>SIGN-UP FORM</h3>
<form action="RegSer" method="post">
   <input type="text" name="txtuname" placeholder="Enter username" />
   <br><br>
   <input type="password" name="txtpass" placeholder="Enter password" />
   <br><br>
   <input type="email" name="txtemail" placeholder="Enter email" />
   <br><br>
   <input type="text" name="txtmobile" placeholder="Enter mobile" />
   <br><br>
   <input type="submit" name="btnsubmit" placeholder="Enter username" />
   <br><br>

</form>

<%

if(request.getParameter("q")!=null)
{
	out.print(request.getParameter("q"));
}


%>
</center>
</div>

<%@include file="footer.jsp" %>