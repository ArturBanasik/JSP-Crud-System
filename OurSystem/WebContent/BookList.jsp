<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Lista Klientów</title>
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
		<center></br></br>
			<h2 style="text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.80)">Dostępni Klienci</h2>
		</center>

		<!--  --></br></br>
		<table class="table table-sm table-dark">
		<thead>
			<tr>
				<th>ID</th>
				<th>Imię</th>
				<th>Nazwisko</th>
				<th>Adres</th>
				<th>Telefon</th>
				<th>Akcje</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach var="book" items="${listBook}">
					<tr>
						<td><c:out value="${book.customerid}" /></td>
						<td><c:out value="${book.imie}" /></td>
						<td><c:out value="${book.nazwisko}" /></td>
						<td><c:out value="${book.adres}" /></td>
						<td><c:out value="${book.telefon}" /></td>
						<td><a
							href="EditServlet?id=<c:out value='${book.customerid}' />">Edytuj</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="DelServlet?id=<c:out value='${book.customerid}' />">Usuń</a>
						</td>
					</tr>
				</c:forEach>
			</tr>
			
		</tbody>
		</table>
		<!--  -->



	
		</div>
	</div>
</body>
</html>
