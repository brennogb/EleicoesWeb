<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
	<nav class="navbar navbar-inverse bg-inverse mb-5">		
		<div class="container">
			<ul class="nav nav-justified">
	  			<li class="nav-item">
					<a href="/EleicoesWeb/index.jsp" class="navbar-brand">
						<img src="resources/img/SIGE-logo-small.png" class="img-fluid" alt="Sistema de Gerenciamento de Eleições">
					</a>
	  			</li>
	  			<li class="nav-item">
	  				<a class="nav-link" href="votar.jsp">Votar</a>
	  			</li>
	  			<li class="nav-item">
	        		<a class="nav-link" href="cadastroCandidato.jsp">Cadastrar candidato</a>
	  			</li>
	  			<% if(request.getSession().getAttribute("usuarioLogado") != null) { %>
					<li class="nav-item">
						<form method="post" action="Logout">
							<button type="submit" class="btn btn-outline-primary">
			  					Logout
							</button>
						</form>
					</li>
				<% } else { %>
	  			<li class="nav-item">
					<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#logarModal">
			  			Logar
					</button>
				</li>
				<% } %>
	  		</ul>
  		</div>
    </nav>
</header>

	<div class="modal fade" id="logarModal" tabindex="-1" role="dialog" aria-labelledby="logarModalLabel" aria-hidden="true">
		
		<div class="mensagens">
        	<span class="label label-danger" id="mensagemErro"></span>
       	</div>
		
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="logarModalLabel">Logar</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      		</div>
      	</div>
      </div>

<div class="modal fade" id="logarModal" tabindex="-1" role="dialog" aria-labelledby="logarModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">

      
        		<form class="" method="post" action="Logar" onsubmit="return validaFormLogin();">
	      			<div class="modal-body">
		    			<input type="text" id="email" name="email" placeholder="Email" class="form-control mt-2">
		    			<input type="password" id="senha" name="senha" placeholder="Senha" class="form-control mt-2 mb-2">
		    			Não possui conta? <a href="cadastroUsuarios.jsp">Cadastra-se!</a>
	      			</div>
	      			<div class="modal-footer">
						<input type="submit" class="btn btn-success my-2 my-sm-0" value="Entrar" />
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	      			</div>
				</form>
    		</div>
  		</div>
	</div>
</div>



