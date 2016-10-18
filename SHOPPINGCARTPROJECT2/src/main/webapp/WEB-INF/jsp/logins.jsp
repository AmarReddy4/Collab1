<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
<title>Login</title>
 <link href="<c:url value="/resources/css/stylee.css" />" rel="stylesheet">
 <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
</head>
<!-- <body style="padding-top:60px"> -->
<body>
<div class="login-page">
  <div class="form">
  <section id="content">
    <form action="perform_login" method="post" class="login-form">
      <input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{5,10}" title="minimum length for username is 5"/>
      <input type="password" placeholder="Password" required id="password" name="password" 
					title="Enter Valid credentials"/>
      <button value="Log in">login</button>
      <p class="message">Not registered? <a href="Register">Create an account</a></p>
    </form>
    </section>
  </div>
</div>

	<!-- <div class="container">
		<section id="content">
			<form action="perform_login" method="post">
				<h1>Login Form</h1>
				<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{5,10}" title="minimum length for username is 5"/>
				</div>
				<div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					title="Enter Valid credentials"/>
				</div>
				
				<div>
					<input type="submit" value="Log in" /> <a href="#">Lost your
						password?</a> <a href="Register">Register</a>
				</div>
				
			</form>
			form
			<div class="button">
				<a href="Register">Get New Account</a>
			</div>
			button
		</section>
		content
	</div> -->
	<!-- container -->

	<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/all.js"></script>
    <script src="js/main.js"></script> -->
</body>
</html>

