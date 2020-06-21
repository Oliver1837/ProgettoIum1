<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="navbar.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav>
 <div class="nav-logo">
 <img alt="LOGO" src="LOGO.png">
 </div>
 
 	<ul class="nav-links">
					<li><a href="#cm">COME FUNZIONA</a></li>
					<li><a href="#">VANTAGGI</a></li>
					<li><a href="#cs">CHI SIAMO</a></li>
					<li><a href="#ass">ASSISTENZA</a></li>
	</ul>
	<div class="accedi">
 	<button onclick=" clickButton() ">ACCEDI</button>
  <div id="myDropdown" class="dropdown-content">
  <form action="">
    <span>Login</span><br>
    <input type="text"><br>
    <span>password</span><br>
    <input type="password"><br>
    <input type="submit" name="Accedi">
    </form>
  </div>
  </div>
</nav>
   
<script src="app.js">

</script>

</body>
</html>