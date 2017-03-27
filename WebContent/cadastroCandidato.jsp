<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Cadastro de Usuários do Sistema</title>
		<link rel="icon" href="../../favicon.ico">
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="resources/css/jumbotron.css" rel="stylesheet">
	</head>
	
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>
	
		<h2 class="text-center">Informe os dados do candidato</h2>

		<form method="post" action="CadastrarCandidato">
			<div>
				<div class="form-group .col-lg-4">
					<label for="nome">Nome</label> 
					<input type="text" class="form-control" name="nome" placeholder="Nome">
				</div>
			
				<div class="form-group .col-lg-4">
					<label for="email">Número</label> 
					<input type="text" class="form-control" name="numero" placeholder="Número">
				</div>
				
			<input type="submit" class="btn btn-default" value="Salvar" />
			</div>
		</form>

	<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>