<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stuinfodb","root","");
Statement st = conn.createStatement();
ResultSet res = st.executeQuery("select * from reg");
while(res.next())
{
	out.print(res.getString(1) + " " + res.getString(2) + " " + res.getString(3) + " " + res.getString(4)+"<hr>");
}


%>
</body>
</html>