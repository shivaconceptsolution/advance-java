<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
 <input type="checkbox" name="course[]" value="C" /> C
 <br><br>
 <input type="checkbox" name="course[]" value="CPP" />CPP
 <br><br>
 <input type="checkbox" name="course[]" value="DS" />DS
 <br><br>
 <input type="submit" name="btnsubmit" value="Click" />

</form>

<%

   if(request.getParameter("btnsubmit")!=null)
   {
	   String arr[] = request.getParameterValues("course[]");
	   String c ="";
	   for(String d:arr)
	   {
		   c = c + d + " ";
	   }
	   out.print(c);
	   
   }


%>
</body>
</html>