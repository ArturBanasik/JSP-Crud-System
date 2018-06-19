<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logowanie</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link href="./css/global.css" type="text/css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>

	<nav class="navbar bg-dark">

		<h1
			style="text-align: center; color: #fff; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.80)">Zarządzanie
			Klientami</h1>
		&nbsp;&nbsp;

		<div class=right>
			<a href="NewServlet" class="nounderline"><button type="button"
					class="btn btn-primary">Dodaj Klienta</button></a> &nbsp;&nbsp; &nbsp;
			<a href="ControllerServlet" class="nounderline"><button
					type="button" class="btn btn-primary">Lista Klientów</button></a>
		</div>


	</nav>
	<div class="container-fluid bg">




		<div class="row">

			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
			<!-- --------------------------------- -->
		<div class="form-container xxx ">

			<c:if test="${book != null}">
				<h1
					style="text-align: center; color: #eee; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.80)">Edycja
					Klienta</h1>
			</c:if>
			<c:if test="${book == null}">
				<h1
					style="text-align: center; color: #eee; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.80)">Dodawanie
					Klienta</h1>
			</c:if>


			<c:if test="${book != null}">
				<form action="UpdateServlet" method="post">
			</c:if>
			<c:if test="${book == null}">
				<form action="AddServlet" method="post">
			</c:if>

			<c:if test="${book != null}">
				<input type="hidden" name="customerid"
					value="<c:out value='${book.customerid}' />" />
			</c:if>

<div class="form-group">
						<label for="exampleFormControlInput1">Imię: </label> <input
							name="imie" type="text" size="45" class="form-control"
							value="<c:out value='${book.imie}' />" required autofocus>
					</div>



					<div class="form-group">
						<label for="exampleFormControlInput1">Nazwisko: </label> <input
							name="nazwisko" type="text" size="45" class="form-control"
							value="<c:out value='${book.nazwisko}' />" required autofocus>
					</div>


					<div class="form-group">
						<label for="exampleFormControlInput1">Adres: </label> <input
							name="adres" type="text" size="45" class="form-control"
							value="<c:out value='${book.adres}' />" required autofocus>
					</div>


					<div class="form-group">
						<label for="exampleFormControlInput1">Telefon: </label> <input
							name="telefon" type="text" size="45" class="form-control"
							value="<c:out value='${book.telefon}' />" required autofocus>
					</div>

					</br>
					<button type="submit" name="submit" value="Save"
						class="btn btn-success btn-block">Zapisz</button>

				</form>


			</div>

			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
		<tr>


		</tr>
	</div>
	


</body>
</html>