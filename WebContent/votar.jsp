<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<meta charset="utf-8"/>
    	<meta name="description" content="Trabalho de Sistemas Webs para eleições genéricas. Onde podem ser cadastrados candidatos à eleição, eleitores e sempre que necessário, acompanhar o andamento dos votos.">
    	<meta name="keywords" content="Java,HTML,CSS,XML,JavaScript">
    	<meta name="author" content="Brenno Gomes e Riva Junior">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	
		<title>Votação</title>
		
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
			<h1 class="text-center">Votação</h1>
			<hr/>
			
			<div class="row mt-5 justify-content-center">
				<div class="col-lg-6  card pt-3 pb-3">
					<div class="row">
						<div class="col">
							<div class="card bg-gray">
								<div class="candidato-card mt-4">
									<img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" class="img-fluid rounded-circle" alt="Miniatura genérica">
								</div>
							</div>
						</div>
					</div>
					<form method="post" action="Votar">
						<div class="form-group mt-2 mb-2">
							<label for="nome">Número</label>
							<input type="text" class="form-control" name="numeroVoto" id="numero-voto" placeholder="00000"
								max="99999" min="0">
							<small>Informe o número do seu candidato</small>
						</div>
					
						<div class="numpad">
							<div class="row">
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">1</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">2</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">3</button>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">4</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">5</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">6</button>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">7</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">8</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">9</button>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<input type="submit" value="Votar" class="btn btn-success btn-lg btn-block"/>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block num">0</button>
								</div>
								<div class="col">
									<button class="btn btn-primary btn-lg btn-block backspace" aria-label="backspace" data-toggle="tooltip" title="backspace (apaga para trás)">
										<img src="resources/img/backspace-arrow_icon.png" alt="">
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>