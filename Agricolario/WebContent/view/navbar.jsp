<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
  
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light shadow ">
  <a class="navbar-brand ml-7" href="showHome">
  	<img alt="" src="image/LOGO.png" width="75" height="75" class="d-inline-block align-top">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
    <ul class="navbar-nav justify-content-center ">
      <li class="nav-item active mr-5  dropdown ">
     
        <a class=" nav-link navbar-element" href="#" role="button" data-toggle="dropdown"  data-hover="dropdown">COME FUNZIONA</a>
        <div class="dropdown-menu dropdown-menu-animation" >
   			 	 <a class="dropdown-item" href="#">Registro Fitosanitario</a>
   				 <a class="dropdown-item" href="#">Prodotti Fitosanitario</a>
    			 <a class="dropdown-item" href="#">Scadenze</a>
 				 <a class="dropdown-item" href="#">Tracciabilità</a>
 	
 		</div>
      </li>
      <li class="nav-item active mr-5 navbar-element">
        <a class="nav-link navbar-element" href="#">VANTAGGI</a>
      </li>
      <li class="nav-item active mr-5 ">
        <a class="nav-link active navbar-element" href="#">CHI SIAMO</a>
      </li>
      <li class="nav-item active mr-5">
        <a class="nav-link navbar-element" href="#">ASSISTENZA</a>
      </li>
    </ul>
    <%  
 
    
    if( session.getAttribute("loggato") != null){
    
    %>
     <div class="align-baseline ml-6 icon-bar-vertical">
  	<a class="" href="showHome"><i class="fa fa-home"></i></a>
  	<a href="#" class=" ml-3" ><i class="fa fa-user-circle"></i></a>
  	<a href="#" class=" ml-3"><i class="fa fa-bell"></i></a>
  	
	</div>
    
    <%}else{ %>
    <button type="button" class="btn  ml-6 mr-3 " data-toggle="modal" id="tasto-accedi" data-target="#login">
	ACCEDI
	</button>
	
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
      
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h5 class="modal-title  " id="exampleModalCenterTitle ">
        ACCEDI
        </h5>
 		<form action="access" method="post">
 		
	  <div class="form-group">
   			<label for="exampleInputEmail1">Email address</label>
    		<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  			</div>
  			<div class="form-group">
    		<label for="exampleInputPassword1">Password</label>
    		<input type="password" class="form-control" id="exampleInputPassword1">
  			</div>
  			<div class="form-group form-check">
    		<input type="checkbox" class="form-check-input" id="exampleCheck1">
    		<label class="form-check-label" for="exampleCheck1">Check me out</label>
  			</div>
 			<div class="form-group text-center">
 			<button type="submit" class="btn btn-primary text-center">ACCEDI</button>
  			</div>
 			<div class="form-group text-center">
    		 <label class="align-middle">Non sei registrato? <a>Registrati</a></label>
  			</div>
  			
  			
  			
  			
 		
 		
 		</form>



      </div>
      <div class="modal-footer text-center">
      
      </div>
    </div>
  </div>
	<%} %>
  </div>
  
  
  
  
  
 
  	
</nav>
<!-- login da sistemare urgente  -->
<div style="display:none">
		 <div id="login">
    	        <h3 class="text-center text-white ">Login form</h3>
    	        <div class="container-fluid">
    	            <div id="login-row" class="row justify-content-center align-items-center">
    	                <div id="login-column" class="col-lg-12">
    	                    <div id="login-box" class="col-lg-4">
    	                        <form id="login-form" class="form" action="" method="post">
    	                            <h3 class="text-center text-info">Accedi</h3>
    	                            <div class="form-group row">
    	                                <label for="username" class="text-info col-5">Email:</label><br>
    	                                <input type="text" name="username" id="username" class="form-control col-6">
    	                            </div>
    	                            <div class="form-group row">
    	                                <label for="password" class="text-info col-5">Password:</label><br>
    	                                <input type="text" name="password" id="password" class="form-control col-6">
    	                            </div>
    	                            <div class="form-group row align-items-center justify-content-center">
    	                                <input type="submit" class="form-control col-4" placeholder="Login" value="Accedi">
    	                            </div>
    	                            <div id="register-link" class="text-center">
    	                               <span>Non sei registrato? <a href="registration.jsp" class="text-info">Registrati</a></span>
    	                            </div>
    	                        </form>
    	                    </div>
    	                </div>
    	            </div>
    	        </div>
    	    </div>
    	    </div>
		<script>
	/*
		$(function () {
			  $('[data-toggle="popover"]').popover({
					  html: true,
					  sanitize: false})
			})
			
		$('#tasto-accedi').on('click', function(){
			var login = document.getElementById("login");
				
				console.log(login.innerHTML);
    	$(this).attr('data-content',login.innerHTML);
		});
		$('#ok').on('click', function(){
			var login = document.getElementById("login");
				
				console.log(login.innerHTML);
    	$(this).attr('data-content',login.innerHTML);
		});
		$(function() {
			
			
			
			  $('[data-toggle="popover"]').popover({
			    html: true,
			sanitize: false,
			  })
			})
		*/
		</script>
		
		
 
		

</body>
</html>