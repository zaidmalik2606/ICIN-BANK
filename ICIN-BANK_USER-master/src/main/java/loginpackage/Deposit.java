package loginpackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Deposit")
public class Deposit extends HttpServlet {
	String currPri;
	String currSavings;
	String primar;
	String savingWith;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String s=request.getParameter("savings");
		String un=(String) session.getAttribute("username");
		String pass=(String) session.getAttribute("pass");
		String reason=request.getParameter("reason");
		if(s.equals("savings"))
		{	
			savingWith=request.getParameter("deposited");
			System.out.println(savingWith);
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","@Root3306");
				PreparedStatement st=con.prepareStatement("select * from customer where user_name=? and pass=?");
				st.setString(1,un );
				st.setString(2, pass);

				ResultSet rs=st.executeQuery();
				rs.next();
			currSavings = rs.getString(8);
			System.out.println(currSavings);
			currSavings=Integer.toString(Integer.parseInt(currSavings)+Integer.parseInt(savingWith));	
			System.out.println("current savings is "+currSavings);
			String sql="Update customer set saving_account=? where user_name=? and pass=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,currSavings);
			ps.setString(2,un);
			ps.setString(3,pass);
			int i = ps.executeUpdate();
			response.sendRedirect("deps.jsp");
		}
			catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(s.equals("primary"))
				{
			primar=request.getParameter("deposited");
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","@Root3306");
				PreparedStatement st=con.prepareStatement("select * from customer where user_name=? and pass=?");
				st.setString(1,un );
				st.setString(2, pass);

				ResultSet rs=st.executeQuery();
				rs.next();
			currPri = rs.getString(7);
			System.out.println(currPri);
			currPri=Integer.toString(Integer.parseInt(currPri)+Integer.parseInt(primar));	
			System.out.println("current primary is "+currPri);
			String sql="Update customer set primary_account=? where user_name=? and pass=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,currPri);
			ps.setString(2,un);
			ps.setString(3, pass);
			int i = ps.executeUpdate();
			response.sendRedirect("depp.jsp");
			
		}
			catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
}}


