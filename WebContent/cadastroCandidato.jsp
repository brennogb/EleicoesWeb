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
    	
		<title>Cadastro de Usuários do Sistema</title>
		
		<!-- Favcons para navegadores desktop -->
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

		<div class="container mt-3">
			<h1 class="text-center">Cadastrar Candidato</h1>
			<hr/>
			<h2>Informe os dados do candidato</h2>
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