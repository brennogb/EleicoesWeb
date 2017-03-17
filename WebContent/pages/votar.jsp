<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Cadastro de Usuários do Sistema</title>
	</head>
	
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>
	
		<h2 class="text-center">Informe o número do seu candidato</h2>

		<form method="post" action="../Votar">
			<div class="form-group">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<label for="nome">Número</label> <input type="text"
								class="form-control" name="numeroVoto" placeholder="Número">
						</div>
					</div>
					<div class="row">
						<input type="submit" class="btn btn-default" value="Votar" />
					</div>
				</div>
			</div>
		</form>

	<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>