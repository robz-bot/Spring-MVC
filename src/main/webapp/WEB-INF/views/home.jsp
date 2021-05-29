<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a4e306a3c6.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="card text-center">
		<div class="card-header">
			<h3>Welcome to Login Page</h3>
		</div>

		<form action="Dashboard" method="POST">
			<div class="container-sm" id="divContainer">
				<div class="row">
					<div class="col">
						<div>
							<span class="badge text-danger"> ${ErrMsg} </span>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-at"></i></span> <input type="text" class="form-control"
								placeholder="Username" aria-label="Username" name="username"
								aria-describedby="basic-addon1">
						</div>

						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-key"></i></span> <input type="password"
								class="form-control" placeholder="Password"
								aria-label="Password" name="password"
								aria-describedby="basic-addon1">
						</div>

						<div>
							<a id="forgotPass" href="<c:url value="/ForgetPassword"/>">Forgot
								Password?</a>
						</div>

						<div class="input-group">
							<br /> <input type="submit" value="Login"
								class="form-control btn btn-primary">
						</div>
					</div>
					<div class="col">
						<img id="loginImg" src="https://www.safekaro.com/images/login.png"
							class="figure-img img-fluid rounded" alt="Image Not found">
					</div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>

<style>
#divContainer {
	height: 200%;
	width: 60%;
	padding: 2%;
	margin-top: 6%;
	border: 1% solid;
}

#loginImg {
	height: 70%;
	width: 90%;
}

#forgotPass {
	float: right;
}

h3 {
	text-align: center;
}

.btn {
	position: absolute;
	top: 50%;
}
</style>

