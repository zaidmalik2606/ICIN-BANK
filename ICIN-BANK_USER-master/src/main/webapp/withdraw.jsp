<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Withdraw</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css">
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
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","@Root3306");
    String un=(String) session.getAttribute("username");
    String pass=(String) session.getAttribute("pass");
    System.out.println(un);
    PreparedStatement s = con.prepareStatement("select * from customer where user_name=? and pass=?");
    s.setString(1, un);
    s.setString(2,pass);
    ResultSet rs=s.executeQuery();
    rs.next();

    out.println("<div class='container'>");
    out.println("<div class='card mx-auto mt-5 mb-5' style='width:900px'>");
    out.println("<div class='card-header text-center' style='background-color:#C4DFDF;'><h1>Withdraw Your Money</h1></div>");
    out.println("<div class='card-body' style='background-color:#E3F4F4;'>");
    out.println("<h4>Savings balance :</h4> " +"<h5>"+rs.getString(8)+"</h5>");
    out.println("<br><h4>Primary balance :</h4> "+"<h5>"+rs.getString(7)+"</h5>");
    

}
catch (ClassNotFoundException e) {

    e.printStackTrace();
} catch (SQLException e) {
    e.printStackTrace();
}
%>

<!-- Apply Bootstrap card -->

        <form action="Withdraw" method="get">
            
            <div class="form-check">
                <input class="form-check-input" type="radio" name="savings" id="savings" value="savings">
                <label class="form-check-label" for="savings">Savings</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="savings" id="primary" value="primary">
                <label class="form-check-label" for="primary">Primary</label>
            </div>
            <br>
            <div class="mb-3">
                <label for="withdraw" class="form-label">Enter amount to be withdrawn:</label>
                <input type="text" class="form-control" id="withdraw" name="withdraw">
            </div>
            <div class="mb-3">
                <label for="reason" class="form-label">Enter reason to withdraw:</label>
                <input type="text" class="form-control" id="reason" name="reason">
            </div>
            <!--  <button type="submit" class="btn btn-primary">Withdraw</button> -->
            <div class="container text-center">
            <button type="submit" class="btn btn-outline-success">Withdraw</button>
          </div>
        </form>
    </div>
</div>
</div>

<!-- Include Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
