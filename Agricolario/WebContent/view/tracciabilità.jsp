<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="bootstrap.min.js"></script>
<link rel="stylesheet" href="css/navbar.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script src="https://kit.fontawesome.com/yourcode.js"></script>
<script src="view/jquery.js">

$.get("operazioneTracciabilita", function(data, status){
    alert("Data: " + data + "\nStatus: " + status);
  });


</script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
  
  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="navbar.jsp"%>

<%@ include file="navbarLaterl.jsp"%>

<div class="container-fluid mt-5 ">
	<div class="row justify-content-center ">
	<div class="col col-lg-12 text-center ">
			<h1>Traccibilità</h1>
		</div>
		<div class="progress col col-lg-6 ">
  			<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
		</div>
	</div>
	<div class="row justify-content-center mt-5">
		<div class="col col-lg-3 " style=" height: 500px;">
			<div class="col col-lg-12 text-center ">
			<h5>Scegli il prodotto</h5>
			</div>
						<div class="col col-lg-12 text-center mt-3 ">
			
		      <select class="custom-select col col-lg-6" id="inputGroupSelect01">
  				    <option selected>Choose...</option>
    			    <option value="1">Albiccoche</option>
   				    <option value="2">Mele</option>
    				<option value="3">Arancie</option>
  			 </select>

				</div>  
				<div class="col col-lg-12  text-center mt-5">
 					
 					<div class="" style="border:solid 1px red;height:200px; width: 200px; display: inline-block;"  id="qrcode">
 					
 					
 					</div>
 					
 								

				</div>  
							 
		</div>
		
		<div class=" col col-lg-6 " >
		<div class="col col-lg-12 text-center ">
			<h5>Informazioni</h5>
			</div>
			<div class="form-group textarea" >
  				<textarea class="form-control z-depth-1 " id="exampleFormControlTextarea6" rows="10"  ></textarea>
			</div>
		
			<button class="align-bottom col col-lg-2 float-right bottone-tracciabilità shadow"  id="bottone-generaQR" >Genera QR</button>
		
		</div>
		</div>
		
</div>
<script >










$("#bottone-generaQR").click(function(){
	
	
	
	
		alert("esco Entro spacco ciao")
       /*    var xhttp = new XMLHttpRequest();

	    	xhttp.onreadystatechange = function() {
			  if (this.readyState == 4 && this.status == 200) {

			  }
			};
			xhttp.open("POST", "operazioneTracciabilita", true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("text=ciaoAlessandro");
		*/
});
</script>
<script type="text/javascript" src="jquery.qrcode.js">



$("#bottone-generaQR").click(function(){
	
	$("#qrcode").qrcode("HTML.it");

	
	
		alert("esco Entro spacco ciao")
       /*     var xhttp = new XMLHttpRequest();

	    	xhttp.onreadystatechange = function() {
			  if (this.readyState == 4 && this.status == 200) {

			  }
			};
			xhttp.open("POST", "operazioneTracciabilita", true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("text=ciaoAlessandro");
		*/
});

</script>





<%@ include file="footer.jsp"%>

</body>
</html>