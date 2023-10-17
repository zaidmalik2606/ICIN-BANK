<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
h4{
display: inline-block;
width:500px;
}
h5{
display: inline-block;
}
</style>
</head>
<body style="color:#47A992; background-color: #F8F6F4;">
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","@Root3306");;
	String un=(String) session.getAttribute("username");//uname-username
	String pass=(String) session.getAttribute("pass");
	System.out.println(un);
	PreparedStatement s = con.prepareStatement("select * from customer where user_name=? and pass=? ");//
	s.setString(1, un);
	s.setString(2,pass);
	ResultSet rs=s.executeQuery();
	rs.next();
	out.println("<div class='card mx-auto mt-5 mb-5' style='width:900px'>");
	out.println("<div class='card-header text-center' style='background-color:#C4DFDF;'>");
	out.println("<h1>Customer Details</h1>");
	out.println("</div>");
	out.println("<div class='card-body' style='background-color:#E3F4F4;'>");
	out.println("<h4>First Name :</h4> " +"<h5>"+rs.getString(2)+"</h5>");
	out.println("<br><h4>Last Name :</h4> "+"<h5>"+rs.getString(3)+"</h5>");
	out.println("<br><h4>User Name :</h4> "+"<h5>"+rs.getString(4)+"</h5>");
	out.println("<br><h4>Primary Account Number :</h4> "+"<h5>"+rs.getString(11)+"</h5>");
	out.println("<br><h4>Saving Account Number :</h4> "+"<h5>"+rs.getString(12)+"</h5>");
	out.println("<br><h4>Primary Account Balance :</h4> "+"<h5>"+rs.getString(7)+"</h5>");
	out.println("<br><h4>Savings Account Balance :</h4> "+"<h5>"+rs.getString(8)+"</h5>");
	out.println("<br><h4>Contact :</h4>"+"<h5>"+rs.getString(6)+"</h5>");
	out.println("<br><h4>Email :</h4> "+"<h5>"+rs.getString(5)+"</h5>");
	out.println("<br>");
	out.println("<div class='container text-center mb-2 mt-2' >");
	out.println("<a href='home.jsp' class='btn btn-outline-success'>Go to Home Page</a>");
	out.println("</div>");
	out.println("</div>");
	out.println("</div>");
	
}
catch (ClassNotFoundException e) {
	
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>