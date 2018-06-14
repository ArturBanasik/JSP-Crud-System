<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logowanie</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link href="./css/global.css"
	type="text/css" rel="stylesheet">
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<!-- FORM START -->
				<form class="form-container">
					<h1>Zaloguj się </h1>
					<div class="form-group">
						<label for="exampleInputEmail1">Login</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter email"> <small
							id="emailHelp" class="form-text text-muted"></small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Hasło</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password">
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Zapamiętaj mnie</label>
					</div>
					<button type="submit" class="btn btn-success btn-block">Wyślij</button>
				</form>
				<!-- FORM END -->
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>

</body>
</html>