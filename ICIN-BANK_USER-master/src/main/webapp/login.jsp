<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style=" background-color: #F8F6F4;">
<div class="container">
  <div class="card mx-auto mt-5" style="width:600px;">
    <div class="card-header text-center" style="background-color:#C4DFDF;">
      <h2 style="color:#47A992;">Welcome to ICIN BANK</h2>
    </div>
    <div class="card-body" style="background-color:#E3F4F4;">
      <form action="Login" method="post">
        <div class="form-group">
          <label for="uname"  style="color:#47A992;">Username</label>
          <input type="text" class="form-control" name="uname" placeholder="Enter your username" required>
        </div>
        <div class="form-group">
          <label for="psw"  style="color:#47A992;">Password</label>
          <input type="password" class="form-control" name="pass" placeholder="Enter your password" required>
        </div>
        <div class="container text-center mt-2">
           <button type="submit" class="btn btn-outline-success mb-2" >Login</button><br >
          
        	<a href="Register.jsp" style="color:#569DAA;">Register New User ?</a>
        </div>
       
      </form>
    </div>
  </div>
</div>
</body>
</html>
