<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navbar.jsp"%>
<%

boolean setTop= false;
if(session.getAttribute("loggato") != null) {
setTop=true;


%>
<div class="container-fluid mt-5 ">
	<div class="row justify-content-center ">
	<div class="col col-lg-12 text-center ">
			<h1>Benvenuto in</h1>
		</div>
		<div class="col col-lg-12 text-center ">
			<h1>Agricolario</h1>
		</div>
</div>





  <div class="row justify-content-center mt-5" >
    <div class="col col-lg-4  ">
    <div  class="mt-3 ml-5 cazzarielli">
    <a href="showRegistro"><i class="fa fa-book"></i></a>
    </div>
    <div  class="shadow cazzarielli-testo"style="  ">
    
    
    <h4 class="mt-2">REGISTRO FITOSANITARIO</h4>
    <p class="mt-2">Compila qui il tuo registro fitosanitario dei trattamenti fitosanitari!
    </p>
    </div>
    </div>
    <div class="col col-lg-4 ">
       <div  class="mt-3 ml-5 cazzarielli">
    <a><i class="fa fa-archive"></i></a>
    </div>
        <div  class="shadow cazzarielli-testo">
    
     <h4 class="mt-2">PRODOTTI FITOSANITARIO</h4>
    <p class="mt-2">Sfoglia qui l'elenco di tutti i prodotti fitosanitari esistenti! </p>
    </div>
    </div>
   </div>

<div class="row justify-content-center mt-5" >
   <div class="col col-lg-4  ">
    <div  class="mt-3 ml-5 cazzarielli">
    <a><i class="fa fa-calendar-o"></i></a>
    </div>
    <div  class="shadow cazzarielli-testo">
    
    
    <h4 class="mt-2">SCADENZE</h4>
    <p class="mt-2">Visualizza qui tutte le scadenze dei trattamenti fitosanitari effettuati!
    </p>
    </div>
    </div>
 
  <div class="col col-lg-4  ">
    <div  class="mt-3 ml-5 cazzarielli">
    <a href="showTracciabilita"><i class="fa fa-qrcode"></i></a>
    </div>
    <div  class="shadow cazzarielli-testo">
    
    
    <h4 class="mt-2">TRACCIABILITA'</h4>
    <p class="mt-2">Crea qui l'etichetta virtuale per ogni prodotto agroalimentare da te coltivato!
    </p>
    </div>
    </div>




</div>


</div>

<%} %>
<div id="carouselExampleIndicators" class="carousel slide <% if(!setTop){ %>mt-1<%}else{ %> mt-5<%} %> " data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="image/PROVA4.jpg" alt="First slide" width=auto height="525px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="image/PROVA7.jpg" alt="Second slide" width=auto height="525px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="image/PROVA8.jpg" alt="Third slide" width=auto height="525px">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 <br>
 <br>
<div class="container-fluid" id="presentazione">

  <div class="row justify-content-center ">
   <div class="col col-lg-11">
    <h1 style="color:#009e0f; font-weight: bold;" id="cf">COME FUNZIONA</h1>
    </div>
 </div>
 <br>

  <div class="row justify-content-center" >
    <div class="col col-lg-5  divPresentazione shadow">
    <h4>REGISTRO FITOSANITARIO</h4>
    <p>Compila qui il tuo registro fitosanitario dei trattamenti fitosanitari! <br>
    Tramite pochi pratici click potrai aggiungere un trattamento al tuo registro fitosanitario, apportare modifiche, visualizzare e stampare i registri degli anni precedenti.
    </p>
    </div>
    <div class="col col-lg-5  offset-md-1 divPresentazione shadow">
     <h4>PRODOTTI FITOSANITARIO</h4>
    <p>Sfoglia qui l'elenco di tutti i prodotti fitosanitari esistenti, consulta tutte le informazioni importanti, le etichette e le avvertenze di ogni singolo prodotto fitosanitario! <br>
    Potrai visualizzare anche solo i tuoi prodotti fitosanitari presenti nel tuo magazzino e aggiungerne nuovi. </p>
    </div>
   </div>
    <br>
    <br>
     <div class="row justify-content-center">
    <div class="col col-lg-5 divPresentazione shadow">
    <h4 >TRACCIABILITÀ</h4>
    <p>Crea qui l'etichetta virtuale per ogni prodotto agroalimentare da te coltivato! <br> 
	Con una semplice generazione di un codice QR potrai visualizzare tutte le informazioni legate ai tuoi prodotti. 
    </p>
    </div>
    <div class="col col-lg-5 offset-md-1 divPresentazione shadow">
     <h4>SCADENZE</h4>
    <p>Visualizza qui tutte le scadenze dei trattamenti fitosanitari effettuati!<br>
	Potrai tenere sotto controllo il termine dei trattamenti e stare al passo coi tempi. 
    </p>
    </div>
    </div>
    
    </div>
     <br>
 <br>
 <br>
  <div class="container-fluid" id="presentazione">

  <div class="row justify-content-center">
   <div class="col col-lg-11  ">
    <h1 style="color:#009e0f; font-weight: bold;" id="vant">VANTAGGI</h1>
    </div>
	
 </div>
<br>
  <div class="row  justify-content-center" >
    <div  class="col col-lg-11  divPresentazione shadow rounded">
    <p>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
   
   
    
    </div>
    </div>
   
    
    <br>
    <div class="container-fluid" id="presentazione">
	<div class="row justify-content-center">
   		<div class="col col-lg-11 ">
    		<h1 style="color:#009e0f; font-weight: bold;" id="cs">CHI SIAMO</h1>
    	</div>
	</div>
    <br>
	<div class="row justify-content-center " >
 		<div class=" col col-lg-3 " >
 			<div class="card divPresentazione shadow">
  				<img src="image/profile3.jpg" class="card-img-top rounded-circle img-fluid" alt="...">
  				<div class="card-body">
    			<h5 class="card-title" style="text-align: center">Alessandro Capodanno</h5>
   				</div>
   			</div>	
    	</div>
 		<div class=" col col-lg-3 " >
 			<div class="card divPresentazione shadow">
  				<img src="image/profile2.jpg" class="card-img-top rounded-circle img-fluid" alt="...">
  				<div class="card-body">
    			<h5 class="card-title" style="text-align: center">Alessia Crispo</h5>
   				</div>
   			</div>	
    	</div>
 		<div class=" col col-lg-3 " >
 			<div class="card divPresentazione shadow">
  				<img src="image/profile.jpg" class="card-img-top rounded-circle img-fluid" alt="...">
  				<div class="card-body">
    			<h5 class="card-title" style="text-align: center">Sara Patierno</h5>
   				</div>
   			</div>	
    	</div>
 		
 	
 	
 	</div>
    
</div>
<br>
<br>
    
<%@ include file="footer.jsp"%>

  
</body>
</html>