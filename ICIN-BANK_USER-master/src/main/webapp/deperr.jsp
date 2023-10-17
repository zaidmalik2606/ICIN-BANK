<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Deposited in savings</title>
  <!-- Include Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style>
    .center {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
  </style>
</head>
<body style="color:#47A992; background-color: #F8F6F4;">
  <div class="container center">
    <div class="text-center">
      <h3>OOPS!! Not enough balance in your account.</h3><br><br>
      <form action="withdraw.jsp" >
        <input type="submit" value="Go Back" class="btn btn-outline-success">
      </form>
    </div>
  </div>

  <!-- Include Bootstrap JS (optional) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
