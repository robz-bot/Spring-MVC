
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
	<div>
		<nav class="navbar navbar-expand-lg bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="<c:url value="/Dashboard"/>">Employee Management</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value="/Dashboard"/>">
							<i class="fas fa-home"></i> Home</a></li>
							
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value="/EmpList"/>">
							<i class="fas fa-list"></i> Employee List</a></li>
							
							<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value="/"/>">
							<i class="fas fa-sign-out-alt"></i> Logout</a></li>
					</ul>
					<span class="navbar-text"> <a class="nav-link active"><i class="fas fa-user"></i>
						Welcome, ROBIN!</a>
					</span>
				</div>
			</div>
		</nav>
		<div class="container-sm" >
			<table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Employee Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Phone Number</th>
                    <th scope="col">Email</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${EmpList}" var="emp">
                <tr>
                    <td>${emp.empId}</td>
                     <td>${emp.name}</td>
                     <td>${emp.phoneNumber}</td>
                     <td>${emp.email}</td>
                </tr>
                </c:forEach>   
            </tbody>
        </table></div>
	
	</div>
</body>
</html>

<style>
h3 {
	text-align: center;
}
</style>
