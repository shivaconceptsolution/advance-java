

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class RegSer
 */
@WebServlet("/RegSer")
public class RegSer extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try
		{
		String uname = request.getParameter("txtuname");
		String pass = request.getParameter("txtpass");
		String email = request.getParameter("txtemail");
		String mobile = request.getParameter("txtmobile");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stuinfodb","root","");
		Statement st = conn.createStatement();
		int x = st.executeUpdate("insert into reg(username,password,email,mobile) values('"+uname+"','"+pass+"','"+email+"','"+mobile+"')");
		if(x!=0)
		{
			//out.print("reg successfully");
			response.sendRedirect("index.jsp?q=reg successfully");
		}
		
		
		}
		catch(Exception ex)
		{
			out.print(ex.getMessage().toString());
		}
		
	}

}
