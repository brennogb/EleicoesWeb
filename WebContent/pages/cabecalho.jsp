<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
	<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/jumbotron.css" rel="stylesheet">
</head>

<header>
	 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/EleicoesWeb/index.jsp">Sistema de Gerenciamento de Eleições</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" action="../Logar">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Senha" class="form-control">
            </div>
            <input type="submit" class="btn btn-success" value="Entrar" />
            <a class="btn btn-primary" href="pages/cadastroUsuarios.jsp">Cadastrar</a>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../resources/js/bootstrap.min.js"></script>
</header>