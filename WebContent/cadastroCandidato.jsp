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
    	
		<title>Cadastro de Usuários do Sistema</title>
		
		<link rel="icon" href="sige.ico.16x16.ico" sizes="16px">
		<link rel="icon" href="sige.ico.30x30.ico" sizes="30px">
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	</head>
	
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>

		<div class="container">
			<div class="row mt-5">
				<div class="col-lg-12">
					<h1>Cadastrar Candidato</h1>
					<h2>Informe os dados do candidato</h2>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-lg-6">
					<div class="row">
						<div class="col">
							<form>
								<div class="card">
									<img class="card-img-top" src="" alt="Foto do candidato">
									<div class="card-block">
										<h4 class="card-title">
											<span class="nome-candidato">Nome do Candidato</span> <span class="candidato-num">10</span>
										</h4>
										<button class="btn btn-primary">Salvar imagem</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<form method="post" action="CadastrarCandidato">
						<div class="row">
							<div class="col">
								<label for="nome">Nome do candidato</label> 
								<input type="text" class="form-control" name="nome" placeholder="José da Silva">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="email">Número</label> 
								<input type="number" class="form-control" name="numero" placeholder="00">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="submit" class="btn btn-primary btn-block" value="Salvar" style="margin-top:20px"/>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>