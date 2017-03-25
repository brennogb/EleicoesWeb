<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    	<title>Sistema de Gerenciamento de Eleições</title>
    	<link rel="icon" href="../../favicon.ico">
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="resources/css/jumbotron.css" rel="stylesheet">
  	</head>

  <body>
  	<jsp:include page="cabecalho.jsp" flush="true"/>
  	
	 <section>
	 	<div class="jumbotron">
      		<div class="container">
        		<h1>Seja Bem-vindo!</h1>
        		<p>Aqui você poderá acompanhar todas as informações sobre as eleições e inclusive votar!</p>
        		<a class="btn btn-primary btn-lg" href="votar.jsp">Votar</a>
        		<a class="btn btn-primary btn-lg" href="cadastroCandidato.jsp">Cadastrar candidato</a>
      		</div>
    	</div>
	 </section>
	 
	 <jsp:include page="rodape.jsp" flush="true"/>
  </body>
</html>