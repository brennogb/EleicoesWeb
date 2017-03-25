<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Confirmação de votação</title>
		<link rel="icon" href="../../favicon.ico">
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="resources/css/jumbotron.css" rel="stylesheet">
	</head>
	
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>
	
		<h2 class="text-center">Confirme o seu candidato</h2>

		<form method="post" action="FinalizarVotacao">
			<div class="form-group">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<label for="nome">Nome: </label> 
							<%= request.getAttribute("nomeCandidato") %>
						</div>
					</div>
					
					<div class="row">
						<input type="submit" class="btn btn-default" value="Confirmar" />
					</div>
				</div>
			</div>
		</form>

	<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>