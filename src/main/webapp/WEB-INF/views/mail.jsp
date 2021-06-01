<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Mail</title>
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
	
	
		<nav class="navbar navbar-expand-sm">
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
	<form action="SaveMail" method="POST">
		<div class="container-sm" id="divContainer">
			<div class="row">
				<div class="col">
					<div>
						<span class="badge text-success"> ${SuccMsg} </span> <span
							class="badge text-danger"> ${ErrMsg} </span>
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="fas fa-portrait"></i></span> <select name="EmpId"
							class="form-control">
							<option class="form-control" value="NONE">-- Select
								Employee ID --</option>
							<c:forEach items="${list}" var="emp">
								<option class="form-control" value="${emp.empId}">${emp.empId}</option>
							</c:forEach>
						</select>
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="fas fa-project-diagram"></i> </span> <select name="Project"
							class="form-control">
							<option class="form-control" value="NONE">-- Select
								Project --</option>
							<option class="form-control" value="Project1">Project 1</option>
							<option class="form-control" value="Project2">Project 2</option>
						</select> <span class="input-group-text" id="basic-addon1"><i
							class="fab fa-elementor"></i> </span> <select name="Module"
							class="form-control">
							<option class="form-control" value="NONE">-- Select
								Module --</option>
							<option class="form-control" value="Module1">Module 1</option>
							<option class="form-control" value="Module2">Module 2</option>
						</select> <span class="input-group-text" id="basic-addon1"><i
							class="far fa-question-circle"></i></span> <select name="Status"
							class="form-control">
							<option class="form-control" value="NONE">-- Select
								Status --</option>
							<option class="form-control" value="Open">Open</option>
							<option class="form-control" value="InProgress">In-Progress</option>
							<option class="form-control" value="Delayed">Delayed</option>
							<option class="form-control" value="Completed">Completed</option>
						</select>
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="fas fa-list-alt"></i> </span>
						<textarea class="form-control" placeholder="Message..."
							aria-label="Name" name="Message" aria-describedby="basic-addon1"> </textarea>
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"> Start
							Date </span> <input type="date" class="form-control" aria-label="date"
							name="StartDate" aria-describedby="basic-addon1"> <span
							class="input-group-text" id="basic-addon1"> End Date </span> <input
							type="date" class="form-control" aria-label="date" name="EndDate"
							aria-describedby="basic-addon1">

					</div>

					<div class="input-group">
						<br /> <input type="submit" value="Save"
							class="form-control btn btn-primary">
					</div>
				</div>
			</div>
			
		</div>
	</form>
</body>
</html>

<style>
h3, .badge {
	text-align: center;
}

a.nav-link.active {
	color: whitesmoke;
}

div#navbarText {
	background-color: #33B5E5;
}

input.form-control.btn.btn-primary {
	background-color: #33B5E5;
}

div#divContainer {
	width: 600px;
}
</style>
