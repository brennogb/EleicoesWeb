<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
	<nav class="navbar navbar-inverse bg-inverse" style="display: block;">
		<a href="/EleicoesWeb/index.jsp" class="navbar-brand" style="width:65px">
			<img src="resources/images/sige.svg" alt="Sistema de Gerenciamento de Eleições" style="width:65px">
		</a>
		<button type="button" class="btn btn-outline-primary float-right" data-toggle="modal" data-target="#logarModal">
  			Logar
		</button>
    </nav>
</header>

<div class="modal fade" id="logarModal" tabindex="-1" role="dialog" aria-labelledby="logarModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="logarModalLabel">Logar</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <form class="" action="Logar">
	      <div class="modal-body">
		    <input type="text" placeholder="Email" class="form-control mt-2">
		    <input type="password" placeholder="Senha" class="form-control mt-2 mb-2">
		    Não possui conta? <a href="cadastroUsuarios.jsp">Cadastrar</a>
	      </div>
	      <div class="modal-footer">
			<input type="submit" class="btn btn-success my-2 my-sm-0" value="Entrar" />
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	      </div>
		</form>
    </div>
  </div>
</div>