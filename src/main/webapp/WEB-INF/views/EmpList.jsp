
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a4e306a3c6.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="card-header">
		<h3>Employee Portal</h3>
		<nav class="navbar navbar-expand-lg">
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<c:url value="/Dashboard"/>"> <i
							class="fas fa-home"></i> Home
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<c:url value="/EmpList"/>"> <i
							class="fas fa-list"></i> Employee List
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<c:url value="/Mail"/>"> <i
							class="fas fa-envelope-square"></i> Task Management
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<c:url value="/"/>"> <i
							class="fas fa-sign-out-alt"></i> Logout
					</a></li>
				</ul>
				<span class="navbar-text"> <a class="nav-link active"><i
						class="fas fa-user"></i> Welcome, Admin!</a>
				</span>
			</div>
		</nav>
	</div>
	<div class="container-sm">
		<br>
		<br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Employee Id</th>
					<th scope="col">Name</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Email</th>
					<th scope="col">Role</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${EmpList}" var="emp">
					<tr>
						<td>${emp.empId}</td>
						<td>${emp.name}</td>
						<td>${emp.phoneNumber}</td>
						<td>${emp.email}</td>
						<td>${emp.role}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	</div>
</body>
</html>

<style>
h3 {
	text-align: center;
}

div#navbarText {
	background-color: #33B5E5;
}

input.form-control.btn.btn-dark {
	background-color: #33B5E5;
}

th {
	-webkit-text-fill-color: #33B5E5;
	text-align: left;
}

a.nav-link.active {
	color: whitesmoke;
}

.container-sm {
	width: 100%;
}
</style>
