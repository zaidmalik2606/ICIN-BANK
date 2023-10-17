<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cheque Request</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="color:#47A992; background-color: #F8F6F4;">
<div class="container">
<div class="card mx-auto mt-5" style="width:600px;">
<h1 class="card-header text-center" style="background-color:#C4DFDF;"><strong>Cheque Request</strong></h1>
<div class="card-body" style="background-color:#E3F4F4;">
<form action="request" method="get">
<input type="radio" id="savings" name="savings" value="savings">
 <label for="savings">Savings</label><br>
 <input type="radio" id="primary" name="savings" value="primary">
 <label for="primary">primary</label><br><br>
Enter Description:<br><textarea id="w3review" name="nik" rows="4" cols="50"></textarea>

<br>
<div class="container text-center">
	<button type="submit" class="btn btn-outline-success">Request</button>
</div>

</form>
</div>
</div>
</div>
</body>
</html>
