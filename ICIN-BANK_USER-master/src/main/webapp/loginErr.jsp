<!DOCTYPE html>
<html>
<head>
<title>Try Again</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="color:#47A992; background-color: #F8F6F4;">

<div class="card mx-auto mt-5" style="width:600px;">
  <div class="card-header text-center" style="background-color:#C4DFDF;">
    <h5 class="card-title">Invalid login... Try Again</h5>
  </div>
  <div class="card-body" style="background-color:#E3F4F4;">
    <form action="Login" method="post">
      <div class="mb-3">
        <label for="uname" class="form-label">Username</label>
        <input type="text" class="form-control" id="uname" placeholder="Enter Username" name="uname" required>
      </div>
      <div class="mb-3">
        <label for="psw" class="form-label">Password</label>
        <input type="password" class="form-control" id="psw" placeholder="Enter Password" name="pass" required>
      </div>
      <div class="container text-center">
      	<button type="submit" class="btn btn-outline-success mb-2">Login</button><br>
      	<a href="Register.jsp" style="color:#47A992" >Register new customer?</a>
      </div>
      
    </form>
    
  </div>
</div>

</body>
</html>
