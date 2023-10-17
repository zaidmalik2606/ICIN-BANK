<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap Registration Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="color:#47A992; background-color: #F8F6F4;">
  <div class="container">
    <div class="card mx-auto mt-5 mb-5" style="width:900px;">
      <div class="card-header" style="background-color:#C4DFDF;">
        <h2 class="text-center">Register new Customer</h2>
      </div>
      <div class="card-body" style="background-color:#E3F4F4;">
        <form action="Register" method="post">
          <div class="mb-3">
            <label for="fname" class="form-label">First Name</label>
            <input type="text" name="fname" class="form-control" placeholder="First name">
          </div>
          <div class="mb-3">
            <label for="lname" class="form-label">Last Name</label>
            <input type="text" name="lname" class="form-control" placeholder="Last name">
          </div>
          <div class="mb-3">
            <label for="pan" class="form-label">Primary Account Number</label>
            <input type="text" name="pan" class="form-control" placeholder="Enter primary account number">
          </div>
          <div class="mb-3">
            <label for="san" class="form-label">Saving Account Number</label>
            <input type="text" name="san" class="form-control" placeholder="Enter Saving account number">
          </div>
          <div class="mb-3">
            <label for="uname" class="form-label">Username</label>
            <input type="text" name="uname" class="form-control" placeholder="Your username">
          </div>
          <div class="mb-3">
            <label for="contact" class="form-label">Contact</label>
            <input type="text" name="mobile" class="form-control" placeholder="Your contact">
          </div>
          <div class="mb-3">
            <label for="pass" class="form-label">Password</label>
            <input type="password" name="pass" class="form-control" placeholder="Your password">
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="text" name="email" class="form-control" placeholder="Your email">
          </div>
          <div class="container text-center">
            <button type="submit" class="btn btn-outline-success">Submit</button>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</body>
</html>
