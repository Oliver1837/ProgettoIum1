
<%@page import="com.agricolario.dao.ProdottoFitosanitarioDAO"%>
<%@page import="com.agricolario.servlet.registrazione"%>
<%@page import="com.agricolario.bean.Trattamento"%>
<%@page import="com.agricolario.bean.RegistroFitosanitario"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.Date" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="bootstrap.min.js"></script>
<link rel="stylesheet" href="css/CssProveALESSIA.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script src="https://kit.fontawesome.com/yourcode.js"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Scadenze - Prodotti Fitosanitari </title>
</head>
<body >




<!--
<div class="w3-container">
  <h3 class="text-center"><em>Scadenze dei Trattamenti Fitosanitari</em></h3>
  <p class="text-center" class="w3-large">Elenco di tutti i prodotti fitosanitari esistenti. Ognuno di esso è caratterizzato da informazioni che ne specificano il tipo, l'utilizzo e le avvertenze. </p>
</div> 

  -->
  <%@ include file="navbar.jsp"%>
 
<%@ include file="navbarLaterl.jsp"%>
<div class="container-fluid mt-5 ">
	<div class="row justify-content-center ">
	<div class="col col-lg-12 text-center ">
             <h2>Scadenze dei Trattamenti Fitosanitari</h2>
	</div>
		
	
	</div>
</div>
<%  ArrayList<RegistroFitosanitario> lista =(ArrayList<RegistroFitosanitario>)request.getAttribute("listaRegistro") ;   %>

<!-- Elenco -->
 <div class="scad"  style="height: 500px">
<%         if(!lista.get(0).getTrattamenti().isEmpty()){                     %>
  <table>
	<!-- Intestazione -->  
    <tr id="intest">
      <th> Scadenza del trattamento</th>
      <th> Fitofarmaco</th>
       <th>Scopo</th>
      <th> Colutura</th>
      <th> Riferimento</th>
    </tr>
    
    <!-- Prodotto 1 -->
    <%  boolean ok=false;
    
    for(Trattamento reg : lista.get(0).getTrattamenti()){ 
     int carenza = new ProdottoFitosanitarioDAO().getTempoCarenza(reg.getNomeProdotto());
   	 Date dt = reg.getDatInzio(); 
	 Calendar c = Calendar.getInstance(); 
	 c.setTime(dt); 
	 c.add(Calendar.DATE, carenza);
	 dt = c.getTime();
	 
	 Date oggi= new Date(System.currentTimeMillis());
    if(oggi.after(dt)){
    	ok= true;
    	
    }
    }
    
    
    
    for(Trattamento reg : lista.get(0).getTrattamenti()){ 
     int carenza = new ProdottoFitosanitarioDAO().getTempoCarenza(reg.getNomeProdotto());
     System.out.println(carenza);
   	 Date dt = reg.getDatInzio(); 
	 Calendar c = Calendar.getInstance(); 
	 c.setTime(dt); 
	 c.add(Calendar.DATE, carenza);
	 dt = c.getTime();
	 int anno = dt.getYear()+1900;
	 int mese = dt.getMonth()+1;
	 int giorno =dt.getDate();
	 String date= anno+"-"+ mese+"-"+giorno;
	 
	 Date oggi= new Date(System.currentTimeMillis());
	if(dt.after(oggi) ){
		    
	 
	 %>
     <tr>
      <td><%=date %></td>
  	  <td><%= reg.getNomeProdotto() %></td>
  	  <td><%= reg.getAvversita() %></td>
      <td><%= reg.getColtura() %></td>
       <td>Vai al Registro</td>
    </tr>
    <%}} %>
      
  
      </table>
  <%	}else{				 %>
  
  <div class="col col-lg-12 text-center ">
	
  <h5 class="text-center" class="w3-large">Non ci sono scadenze </h5>
</div>
  <%} %>
</div>   

<!-- 
<div class="pagination">
  <a href="#">&laquo;</a>
 <%
  int numTrattamenti = lista.get(0).getTrattamenti().size();
 int quoziente = numTrattamenti/4;
 
 
 for(int i =0;i<quoziente ; i++ ){
	 %>
  <a href="#"><%=i+1 %></a>
 <%  }%>
 
  <a href="#">&raquo;</a>  
</div>   
-->
<%@ include file="footer.jsp"%>
 
<!-- 
 <div class="scad" style="overflow-x:auto;">
  <table>
    <tr id="intest">
      <th> Scadenza del trattamento</th>
      <th> Fitofarmaco</th>
       <th>Scopo</th>
      <th> Colutra</th>
      <th> Riferimento</th>
    </tr>
    
    <tr>
      <td>23/05/2020</td>
  	  <td>Antarktis</td>
  	  <td>Curare la salmonella</td>
      <td>Orzo</td>
       <td>Vai al Registro</td>
    </tr>
    
      
   <tr>
      <td>23/05/2020</td>
  	  <td>Antarktis</td>
  	  <td>Curare la salmonella</td>
      <td>Orzo</td>
       <td>Vai al Registro</td>
    </tr>
    
      
    <tr>
      <td>23/05/2020</td>
  	  <td>Antarktis</td>
  	  <td>Curare la salmonella</td>
      <td>Orzo</td>
       <td>Vai al Registro</td>
    </tr>
    
      
    <tr>
      <td>23/05/2020</td>
  	  <td>Antarktis</td>
  	  <td>Curare la salmonella</td>
      <td>Orzo</td>
       <td>Vai al Registro</td>
    </tr>
    
      
  <tr>
      <td>23/05/2020</td>
  	  <td>Antarktis</td>
  	  <td>Curare la salmonella</td>
      <td>Orzo</td>
       <td>Vai al Registro</td>
    </tr>
      </table>
</div>   


<div class="pagination">
  <a href="#">&laquo;</a>
  <a href="#">1</a>
  <a href="#" class="active">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <a href="#">&raquo;</a>  
</div>   


 -->

</body>
</html>