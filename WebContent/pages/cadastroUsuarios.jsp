<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Cadastro de Usuários do Sistema</title>
	</head>
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>
	
		<h2 class="text-center">Informe seus dados</h2>

		<form method="post" action="../Cadastrar">
			<div>
				<div class="form-group .col-lg-4">
					<label for="user-nome">Nome</label> 
					<input type="text" id="user-name" class="form-control" name="nome" placeholder="Nome">
				</div>
			
				<div class="form-group .col-lg-4">
					<label for="email">E-mail</label> 
					<input type="text" class="form-control" name="email" placeholder="E-mail">
				</div>
			
				<div class="form-group .col-lg-4">
					<label for="senha">Senha</label> 
					<input type="password" class="form-control" name="senha" placeholder="Senha">
			</div>
			
			<input type="submit" class="btn btn-default" value="Salvar" />
			</div>
		</form>

	<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>