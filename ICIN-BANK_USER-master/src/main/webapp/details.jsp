<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
	h4{
display: inline-block;
width:500px;
}
h5{
display: inline-block;
}

.btn-spacing {
		margin-right: 10px;
	}

</style>
</head>
<body style="color:#47A992; background-color: #F8F6F4;">
<%
System.out.println("tilla");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","@Root3306");
	String un=(String) session.getAttribute("username");
	String pass=(String) session.getAttribute("pass");
	System.out.println(un);
	PreparedStatement s = con.prepareStatement("select * from customer where user_name=? and pass=?");
	s.setString(1, un);
	s.setString(2,pass);
	ResultSet rs=s.executeQuery();
	rs.next();
	out.println("<div class='card mx-auto mt-5 mb-5' style='width:900px'>");
	out.println("<div class='card-header text-center' style='background-color:#C4DFDF;'>");
	out.println("<h1>Customer Account Details</h1>");
	out.println("</div>");
	out.println("<div class='card-body' style='background-color:#E3F4F4;'>");
	out.println("<h4>Primary Balance :</h4> " +"<h5>"+rs.getString(7)+"</h5>");
	out.println("<br><h4>Saving Balance :</h4> "+"<h5>"+rs.getString(8)+"</h5>");
	out.println("<br><h4>Primary Account Number :</h4> "+"<h5>"+rs.getString(11)+"</h5>");
	out.println("<br><h4>Saving Account Number :</h4> "+"<h5>"+rs.getString(12)+"</h5>");
	
	out.println("<br><h4>Contact :</h4>"+"<h5>"+rs.getString(6)+"</h5>");
	out.println("<br><h4>Email :</h4> "+"<h5>"+rs.getString(5)+"</h5>");
	out.println("<br>");
	out.println("<div class='container text-center mb-2 mt-2' >");
	out.println("<a href='deposit.jsp' class='btn btn-outline-success btn-spacing'>Deposit</a>");
	out.println("<a href='withdraw.jsp' class='btn btn-outline-success btn-spacing'>Withdraw</a>");
	out.println("<a href='home.jsp' class='btn btn-outline-success btn-spacing'>Home</a>");
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
