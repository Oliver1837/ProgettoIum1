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




<%@ include file="navbarLaterl.jsp"%>
<div class="container-fluid mt-5" style="height: 450px;">

<div class="row justify-content-center ">
	<div class="col col-lg-12 text-center ">
			<h1> Delega</h1>
		</div>
		
	</div>

<div class="row justify-content-center">

  <div class="col col-lg-4 mt-5 divPresentazione shadow">
     <h4>Utente Delegato</h4>
  <form>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-6">
      <input type="text"  class="form-control" value="">
    </div>
  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Nome</label>
    <div class="col-sm-6">
      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="" style="border-bottom: solid 1px grey">
    </div>
  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Cognome</label>
    <div class="col-sm-6">
      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="" style="border-bottom: solid 1px grey">
    </div>
  </div>
</form>
    </div>
  <div class="col col-lg-4 mt-5 offset-sm-1 divPresentazione shadow">
     <h4>Registro</h4>
    <form>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Data delega</label>
    <div class="col-sm-6">
      <input type="text"  class="form-control" value="">
    </div>
  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Registro</label>
  <div class="input-group  col-sm-6">
  
  <select class="custom-select" id="inputGroupSelect01">
    <option selected>Choose...</option>
    <option value="1">One</option>
    <option value="2">Two</option>
    <option value="3">Three</option>
  </select>
</div>
  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Cognome</label>
    <div class="col-sm-6">
      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="" style="border-bottom: solid 1px grey">
    </div>
  </div>
</form>
    </p>
    </div>


<div class="row justify-content-center">






</div>





</div>







</div>














<%@ include file="footer.jsp"%>

</body>
</html>