<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

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
		<div class="row">
			<div class="col">
				<form action="SaveEmp" method="POST">
					<div class="container-sm" id="divContainer">
						<div class="row">

							<div class="col">
								<div>
									<span class="badge text-success"> ${SuccMsg} </span> <span
										class="badge text-danger"> ${ErrMsg} </span>
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-pen"></i> </span> <input type="text"
										class="form-control" placeholder="ID" aria-label="Username"
										name="EmpId" aria-describedby="basic-addon1">
								</div>

								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-list-alt"></i> </span> <input type="text"
										class="form-control" placeholder="Name" aria-label="Name"
										name="Name" aria-describedby="basic-addon1" />
								</div>

								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-phone-square-alt"></i> </span> <input type="text"
										onkeypress="return onlyNumberKey(event)" maxlength="10"
										class="form-control" placeholder="Phone"
										aria-label="PhoneNumber" name="PhoneNumber"
										aria-describedby="basic-addon1" />
								</div>

								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-envelope-open-text"></i> </span> <input type="text"
										class="form-control" placeholder="Email" aria-label="Email"
										name="Email" aria-describedby="basic-addon1" />
								</div>

								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-user-tag"></i> </span> <select name="Role"
										class="form-control">
										<option class="form-control" value="NONE">-- Select
											Role --</option>
										<option class="form-control" value="Manager">Manager</option>
										<option class="form-control" value="Operator">Operator</option>
									</select>
								</div>

								<div class="input-group">
									<br /> <input type="submit" value="Save"
										class="form-control btn btn-primary">
								</div>
							</div>
							

						</div>
					</div>
				</form>
			</div>

		</div>
	</div>

</body>
</html>

<style>
h3, .badge {
	text-align: center;
}

#divContainer {
	height: 50%;
	width: 60%;
	padding: 2%;
	margin-top: 0%;
	border: 1% solid;
}
div#divContainer {
    width: 400px;
}

a.nav-link.active {
	color: whitesmoke;
}

div#navbarText {
background-color:#33B5E5;
}

input.form-control.btn.btn-primary{
background-color:#33B5E5;
}

img {
	height: 350px;
	width: 350px;
}
.col {
    width: 100px;
}
</style>

<script>
    function onlyNumberKey(evt) {
        // Only ASCII character in that range allowed
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            return false;
        return true;
    }
</script>
