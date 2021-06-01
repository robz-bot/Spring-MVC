<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<h3>Admin Register</h3>
	<form class="login" action="Dashboard" method="POST">
		<label for="login__username">User Name</label> <input type="text"
			id="login__username" name="UserName" required /> <label
			for="login__password">Password</label> <input type="password"
			id="login__password" name="Password" required /> <label
			for="login__password">Confirm Password</label> <input type="password"
			id="login__password" name="cpass" required /> <label
			for="login__password">Email</label> <input type="email"
			id="login__password" name="Email" required /> <br> <input
			type="submit" value="Sign Up" /><br>
		<p>Already have an account?</p>
		<a href="<c:url value="/"/>"> SignIn here</a> <img
			src="https://i.dlpng.com/static/png/1290662-about-us-blue-people-png-500_500_preview.png" />
	</form>
</body>
</html>

<style>
input#login__username {
	margin-left: -300px;
}

input#login__password {
	margin-left: -300px;
}

label, a, p {
	margin-left: -300px;
}

h3 {
	color: #33B5E5;
}

form.login {
	align-items: center;
	width: 700px;
	margin-top: 10px;
	margin-left: -20px;
	height: 500px;
}

input[type="submit"] {
	margin-left: -300px;
	border-block-style: revert;
	border-bottom-left-radius: inherit;
	border-top-left-radius: inherit;
	border-bottom-right-radius: inherit;
	border-top-right-radius: inherit;
	background-color: #33B5E5;
	border-block-color: initial;
	color: white;
	width: 210px;
}

img {
	width: 300px;
	margin-top: -400px;
	margin-right: -330px;
}

* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	font-family: "Roboto", sans-serif;
	-webkit-tap-highlight-color: transparent;
}

html, body {
	padding: 0;
	margin: 0;
	display: -ms-grid;
	display: grid;
	place-items: center;
	height: 100vh;
	background: #f8f9ff;
	color: rgba(0, 0, 0, 0.7);
}

.login {
	width: 400px;
	min-height: 300px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	background: white;
	padding: 1em 2em;
	border-radius: 1em;
	-webkit-box-shadow: 0 0 30px rgba(0, 0, 0, 0.3);
	box-shadow: 0 0 30px rgba(0, 0, 0, 0.3);
}

.login #login__username, .login #login__password {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	outline: none;
	border: 1px solid rgba(0, 0, 0, 0.3);
	border-radius: 0.6em;
	height: 2em;
	padding-left: 1em;
}

.login>label {
	margin-top: 1em;
	margin-bottom: 0.3em;
}

.login .login__section {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	margin: 1em 0 2em 0;
}

.login .login__section #login__remember {
	position: relative;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	outline: none;
	width: 3em;
	height: 1.5em;
	background: #e2e2e2;
	margin-right: 0.5em;
	border: 0;
	border-radius: calc(1.5em/ 2);
	cursor: pointer;
}

.login .login__section #login__remember::after {
	content: "";
	position: absolute;
	top: 0.25em;
	left: 0.25em;
	width: 1em;
	height: 1em;
	border-radius: 50%;
	background: rgba(0, 0, 0, 0.3);
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

.login .login__section #login__remember:checked::after {
	-webkit-transform: translateX(1.5em);
	transform: translateX(1.5em);
	background: #42a5f5;
}

.login .login__section .login__new-password {
	margin-left: auto;
	text-decoration: none;
	color: black;
}

.login .login__button {
	cursor: pointer;
	outline: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 0.6em;
	border: 0;
	max-width: -webkit-max-content;
	max-width: -moz-max-content;
	max-width: max-content;
	padding: 0.7em 2em;
	color: white;
	text-decoration: none;
	font-size: 1em;
}

.login .login__section-2 {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

.login .login__section-2 .login__submit {
	margin-left: auto;
	background: #42a5f5;
}

.login .login__section-2 .login__register {
	background: #333333;
}

.login .login__divider {
	display: block;
	width: 100%;
	height: 1px;
	background: #e6e6e6;
	margin: 1em 0;
}

.login .login__loginwith {
	height: 2.5em;
	border-radius: 0.7em;
	background: white;
	margin: 0.3em 0;
	padding: 0 1em;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
	box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
	cursor: pointer;
}

.login .login__loginwith img {
	height: 2em;
	margin-left: auto;
}
</style>

