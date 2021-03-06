<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
    	<meta charset="utf-8"/>
    	<meta name="description" content="Trabalho de Sistemas Webs para eleições genéricas. Onde podem ser cadastrados candidatos à eleição, eleitores e sempre que necessário, acompanhar o andamento dos votos.">
    	<meta name="keywords" content="Java,HTML,CSS,XML,JavaScript">
    	<meta name="author" content="Brenno Gomes e Riva Junior">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	
		<title>Sistema de Gerenciamento de Eleições</title>
		
		<!-- Favicons para navegadores desktop -->
		<link rel="icon" href="resources/img/favicon-16x16.png" sizes="16x16">
		<link rel="icon" href="resources/img/favicon-32x32.png" sizes="32x32">
		<link rel="icon" href="resources/img/favicon-48x48.png" sizes="48x48">
		<link rel="icon" href="resources/img/favicon-64x64.png" sizes="64x64">
		<link rel="icon" href="resources/img/favicon-128x128.png" sizes="128x128">
		
		<!-- iPad iOS7+ com Retina Display -->
		<link rel="apple-touch-icon" sizes="152x152" href="resources/img/apple-touch-icon-152x152.png">
		<!-- iPhone iOS7+ com Retina Display -->
		<link rel="apple-touch-icon" sizes="120x120" href="resources/img/apple-touch-icon-120x120.png">
		<!-- iPad iOS7+ sem retina display e iPad Mini-->
		<link rel="apple-touch-icon" sizes="76x76" href="resources/img/apple-touch-icon-76x76.png">
		<!-- iPhone iOS7-, iPod Touch e Android 2.2+  -->
		<link rel="apple-touch-icon" href="resources/img/apple-touch-icon.png">
		
		<!-- Tiles para windows phone -->
		<meta name="msapplication-TileImage" content="resources/img/tile.png"/>
		
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="resources/css/style.css" rel="stylesheet">
	</head>
	
	<body>
  	<jsp:include page="cabecalho.jsp" flush="true"/>
  	
	 <section>
    	<div class="container">
	 		<img src="resources/img/SIGE-logo-arte-bandeira-Brasil.png" alt="Logo SIGE em formato artistico com cores que lembram a bandeira do Brasil">
	 		<h1 class="text-center" style="color: #b3b3b3;">Sistema de Gerenciamento de Eleições</h1>
	 		<div class="jumbotron mt-3">
	 			<h2 class="">Seja Bem-vindo!</h2>
	       		<p class="lead">Aqui você poderá acompanhar todas as informações sobre as eleições e inclusive votar!</p>
	       		<hr class="my-4">
	       		<a class="btn btn-outline-primary btn-lg" href="votar.jsp">Votar</a>
	       		<a class="btn btn-outline-primary btn-lg" href="cadastroCandidato.jsp">Cadastrar candidato</a>
	       		<a class="btn btn-outline-primary btn-lg" href="estatisticaEleicao.jsp">Estatisticas da Eleição</a>
	     	</div>
    	</div>
	 </section>
	 
	 <jsp:include page="rodape.jsp" flush="true"/>
  </body>
</html>