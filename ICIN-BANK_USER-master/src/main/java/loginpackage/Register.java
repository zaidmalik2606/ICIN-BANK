package loginpackage ;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Register")
public class Register extends HttpServlet {
protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
{
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	String mob=request.getParameter("mobile");
	String email=request.getParameter("email");
	String pan=request.getParameter("pan");
	String san=request.getParameter("san");
	System.out.println("Registration of new user..!!");
	LoginDao dao=new LoginDao();
	try {
		if(dao.addDetail(uname, pass,mob,email,fname,lname,pan,san))
		{	

			response.sendRedirect("mno.jsp");
			System.out.println("Successfully registered..!!");
		}
		else
		{
			response.sendRedirect("error.jsp");
			System.out.println("Can't register..!!");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
