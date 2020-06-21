<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="width: 100%">
<%@ include file="navbar.jsp"%>

<div class="icon-bar shadow">
  <a href="#registro"><i class="fa fa-book"></i><span class="icon-bar-text shadow">Registro Fitosanitario</span></a>
  <a href="#Scadenze"><i class="fa fa-calendar-o"></i><span class="icon-bar-text shadow">Scadenze</span></a>
  <a href="#prodotti"><i class="fa fa-archive"></i><span class="icon-bar-text shadow">Prodotti Fitosanitario</span></a>
  <a href="#tracciabilità"><i class="fa fa-qrcode"></i><span class="icon-bar-text shadow">Tracciabilità</span></a>
</div>
<div class="container-fluid mt-5 ">
	<div class="row justify-content-center registration">
		<div class="col col-lg-6 ">
			<h1>Registrazione</h1>
		</div>
	</div>
<br>

	<div class="row justify-content-center " >
		<div class="col col-lg-6 shadow " id="utente" >
			<br>
				<form id="form-registrazione" action="access" method="post">
				<input type="hidden" name="access" value="register">
  					<div class="row justify-content-center">
    					<div class="col-4 form-group">
    						<label>Nome</label>
      						<input type="text" class="form-control border-bottom" placeholder="Nome" name="nome">
    					</div>
    					<div class="col-4 form-group">
    					<label>Cognome</label>
      					<input type="text" class="form-control" placeholder="Cognome" name="cognome">
    					</div>
  					</div>
 
  					<div class="row justify-content-center">
  					   <div class="col-8 form-grupo">
  					   		<label>Email:</label>
      						<input type="text" class="form-control" placeholder="email" name="email">
   					   </div>
  					</div>
 					 <div class="row justify-content-center mt-3">
    					<div class="col-4 form-goup">
    						<label>Password</label>
      						<input type="text" class="form-control" placeholder="Password" name="password">
    					</div>
    				 	<div class="col-4 form-group">
    				 		<label>Conferma Password</label>
      				 		<input type="text" class="form-control" placeholder="Conferma Password">
   					 	</div>
  					</div>	

   					<div class="row justify-content-center">
					    <div class="col-4">
					   	 <label>Data di nascita</label>
    						<input type="date" class="form-control" placeholder="dd mm yyyy" name="dataNascita"    data-date-format="DD MMMM YYYY">
    					</div>
    				<div class="col-4 form-group">
     					<label  >Ruolo</label>	
 							 <select class="custom-select" id="ruolo" name="ruolo">
  								 <option selected>---</option>
    						     <option value="titolare">Titolare</option>
   							     <option value="delegato">Delegato</option>
 							 </select>
    				</div>
 				   </div>
   					<div class="row  justify-content-center">
   				    <div class="col-8">
 							<div class="form-group form-check">
    								<input type="checkbox" class="form-check-input" id="exampleCheck1">
    								<label class="form-check-label">Acconsento al trattamento dei miei dati, accetto i Termini di Servizio e la Politica della Privacy</label>
 							</div>    
  					</div>
  					</div>
  					<div class="row justify-content-end">
  						  <div class="col-2" id="registrazione">
 								<button type="submit" class="btn btn-primary"  disabled>Registrati</button>   
 						 </div>
  					</div>
 	
 
			</form>
<br>
		</div>
	<!-- 2 form azienda -->
	
		<div class="col col-lg-6 shadow registration" id="azienda"  style="display: none; ">
			<br>
				<form>
  					<div class="row justify-content-center">
    					<div class="col-6">
    						<label>Nome azienda</label>
      						<input type="text" class="form-control border-bottom" placeholder="Nome Azienda" name="azienda">
    					</div>
    					
  					</div>
  					<div class="row justify-content-center">
  					   <div class="col-6">
  					   		<label>Email azienda</label>
      						<input type="text" class="form-control" placeholder="Email Azienda" name="email">
   					   </div>
  					</div>
 					 <div class="row justify-content-center">
    					<div class="col-4">
    						<label>Indirizzo</label>
      						<input type="text" class="form-control" placeholder="Indirizzo" name="indirizzo">
    					</div>
    					<div class="col-2">
    						<label>N°Civico</label>
      						<input type="text" class="form-control" placeholder="n°" name="numeroCivico">
    					</div>
    				 	
    				 
  					</div>	
  					<div class="row justify-content-center ">
  						<div class="col-4">
  							<label>Città</label>
      				 		<input type="text" class="form-control" placeholder="Città" name="citta">
   					 	</div>
   					 	<div class="col-2">
   					 		<label>CAP</label>
      				 		<input type="text" class="form-control" placeholder="Cap" name cap>
   					 	</div>
  					
  					
  					
  					</div>
   					<div class="row justify-content-center">
					    <div class="col-6 form-group">
					    	<label>Data Fondazione:</label>
    						<input type="date" class="form-control" placeholder="Data Fondazione" name="dataFondazione" >
    					</div>
    				
 				   </div>
   					<div class="row justify-content-center">
   				    <div class="col-6">
 							<div class="form-group form-check">
    								<input type="checkbox" class="form-check-input" id="exampleCheck1">
    								<label class="form-check-label" for="exampleCheck1">Acconsento al trattamento dei miei dati, accetto i Termini di Servizio e la Politica della Privacy</label>
 							</div>    
  					</div>
  					</div>
  					<div class="row justify-content-end mb-4">
  						  <div class="col-2" id="registrazione">
 								<button type="submit" class="btn btn-primary"  >Registrati</button>   
 						 </div>
  					</div>
 	
 
			</form>
		</div>
	
	</div>
	
	<!-- 2 form azienda -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>

<script >
$( "#ruolo").on('change', function () {
	  //ways to retrieve selected option and text outside handler
	  if(this.value=='titolare'){
    $("#registrazione").html('<button  type="button" class="btn btn-primary" id="bottone-registrazione">Avanti</button>  ');
	  }else{
		    $("#registrazione").html('<button type="submit" class="btn btn-primary"  id="bottone-avanti">Registrati</button>  ');
		  
	  }
	  });
$("#form-registrazione").on("click","#bottone-registrazione",function(){
	$("#utente").css("animation","fadeOutLeft");
	$("#utente").css("animation-duration","2s");

setTimeout(function(){ 
	$("#utente").hide();
 }, 1000);
setTimeout(function(){ 
	$("#azienda").show();
 }, 1000);

		
	
	
} );

</script>



<%@ include file="footer.jsp"%>

<script >
</script>
 </body>
</html>

