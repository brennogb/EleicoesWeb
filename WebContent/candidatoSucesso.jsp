<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="pt-br">
	<head>
    	<meta charset="utf-8"/>
    	<meta name="description" content="Free Web tutorials">
    	<meta name="keywords" content="Java,HTML,CSS,XML,JavaScript">
    	<meta name="author" content="Brenno Gomes e Riva Junior">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	
		<title>Usuário cadastrado com sucesso</title>
		
		<link rel="icon" href="favicon.ico">
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	</head>	
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>
			<section>
				<div class="container">
        			<h1 class="alert-success">Usuário cadastrado com sucesso!!!</h1>
      			</div>
			</section>	
		<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>