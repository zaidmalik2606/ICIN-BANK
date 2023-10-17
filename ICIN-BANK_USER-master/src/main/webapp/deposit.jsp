<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body style="color:#47A992; background-color: #F8F6F4;">
    <div class="container">
        <div class="card mx-auto mt-5" style="width:600px">
        	<div class="card-header text-center" style="background-color:#C4DFDF;">
        		<h3>Deposit Money..!!</h3>
        	</div>
            <div class="card-body" style="background-color:#E3F4F4;">
                <form action="Deposit" method="get">
                    
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="savings" name="savings" value="savings">
                        <label class="form-check-label" for="savings">Savings</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="primary" name="savings" value="primary">
                        <label class="form-check-label" for="primary">Primary</label>
                    </div>
                    <div class="form-group">
                        <label for="deposited">Enter amount to be deposited:</label>
                        <input class="form-control" type="text" id="deposited" name="deposited">
                    </div>
                    <div class="form-group">
                        <label for="reason">Enter the reason to deposit:</label>
                        <input class="form-control" type="text" id="reason" name="reason">
                    </div>
                    <div class="container text-center">
                    	<button class="btn btn-outline-success" type="submit">Deposit</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</body>
</html>
