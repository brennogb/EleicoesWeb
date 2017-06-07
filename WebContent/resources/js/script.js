var Numpad = function () {};
var ajax;

function validaFormLogin() {
    var login = document.getElementById("email").value;
    var senha = document.getElementById("senha").value;
   
    var contemLetraMinuscula = new RegExp(/[a-z]{1,}/).test(senha);
    var contemLetraMaiuscula = new RegExp(/[A-Z]{1,}/).test(senha);
    var contemDigito = new RegExp(/[0-9]{1,}/).test(senha);
    var contemOitoCaracteres = senha.length >= 8;
    
    var mensagemErro = document.getElementById("mensagemErro");
    
    if (!login) {
        mensagemErro.innerHTML = "Favor preencher o campo login.";
        return false;
    } else if (!senha) {
        mensagemErro.innerHTML = "Favor preencher o campo senha.";
        return false;
    } else if (!(contemOitoCaracteres && contemLetraMaiuscula && contemLetraMinuscula && contemDigito)) {
        mensagemErro.innerHTML = "A senha deve ter no mínimo 8 caracteres, com pelo menos 1 letra maiúscula, 1 letra minúscula e 1 digito.";
        return false;
    } else {
        return true;
    }
};

function limpaMensagemErro() {
    document.getElementById("mensagemErro").innerHTML = "";
};

function criarXMLHttpRequest() {
    try {
        ajax = new XMLHttpRequest();
    } catch (trymicrosoft) {
        try {
            ajax = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (othermicrosoft) {
            try {
                ajax = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (failed) {
                ajax = null;
            }
        }
    }

    if (ajax == null)
        console.log("Erro ao criar o objeto XMLHttpRequest.");
};

function enviaVotoAjax() {
    criarXMLHttpRequest();

    var numero = document.getElementById("numero-voto").value;
    var divResposta = document.getElementById("nomeCandidato");

    ajax.open("GET", "/EleicoesWeb/VotoAJAX?numero=" + numero);
    
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4 && ajax.status == 200) {  
            var respostaJSON = JSON.parse(ajax.responseText);

            if (respostaJSON) {
                var nome = respostaJSON.respostaServidor,
                	btnConfirma = $('<input type="submit" onclick="confirmaVotoAjax();" value="Confirmar" class="btn btn-success btn-lg btn-block"/>');
                
                divResposta.innerText = nome;
                $(divResposta).after(btnConfirma);
                
            } else {
                console.log("Requisição AJAX falhou: " + ajax.status + " " + ajax.statusText);
            }
        } else {
        	console.log("Requisição AJAX falhou: " + ajax.status + " " + ajax.statusText);
        }
    }
    
    ajax.send(); 
}

function confirmaVotoAjax() {
    criarXMLHttpRequest();
    var divResposta = document.getElementById("nomeCandidato");
    var nomeCandidato = divResposta.value;

    ajax.open("GET", "/EleicoesWeb/ConfirmacaoVotoAJAX?nome=" + nomeCandidato);
    
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4 && ajax.status == 200) {  
            var respostaJSON = JSON.parse(ajax.responseText);

            if (respostaJSON) {
                var mensagem = respostaJSON.respostaServidor;
                
                divResposta.innerHTML = mensagem;
                alert(nome);
            } else {
                console.log("Requisição AJAX falhou: " + ajax.status + " " + ajax.statusText);
            }
        } 
    }
    
    ajax.send(); 
}

function somenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;
    document.getElementById("mensagemErro").innerHTML = "Válido somente número com 2 digitos";
    if((tecla>47 && tecla<58)) {
    	document.getElementById("mensagemErro").innerHTML = "";
    	return true;
    }
    else{
    	if (tecla==8 || tecla==0) {
    		document.getElementById("mensagemErro").innerHTML = "";
    		return true;
    	}
	else  return false;
    }
};

Numpad.prototype.putNumber = function (event) {
	event.preventDefault();
	var btn = $(event.target);
	var num = btn.text();
	var inputVoto = $('#numero-voto');
	var numVoto = inputVoto.val();
	var MAX_LENGTH = 2;
	
	if (numVoto.length < MAX_LENGTH) {
		inputVoto.val(numVoto + num);
	}
};

Numpad.prototype.backspace = function (event) {
	event.preventDefault();
	var btn = $(event.target);
	var inputVoto = $('#numero-voto');
	var inputVal = inputVoto.val();

	inputVoto.val(inputVal.substring(0, inputVal.length -1));
};

var Eleicao = function () {
	this.candicato = null;
};

Eleicao.prototype.getCandidato = function () {
	
};

Eleicao.prototype.prepararCard = function (candidato) {
	
	var imgCandidato = 'data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=';
	var descCandidato = 'Miniatura genérica';
	
	if (candidato.image != null) {
		descCandidato = 'Foto do ' + candidato.nome;
		imgCandidato = candidato.image;
	}
	
	var candidatoCard = '<div class="candidato-card">' +
							'<img src="' + imgCandidato + '" class="img-fluid rounded-circle" alt="' + descCandidato + '">' +
							'<h4>' + candidato.nome +'</h4>' +
						'</div>';

	return $(candidatoCard);
};

Eleicao.prototype.verificarNumeroDoCandidato = function (evt) {
	var input = $(evt.target);
	var candidato = this.getCandidato( input.val() );
	
	if (candidato != null) {
		var card = Eleicoes.prepararCard( candidato );
	}
};

$(document).ready(function() {
	var numpad = new Numpad(),
		eleicao = new Eleicao();
	
	 $('[data-toggle="tooltip"]').tooltip();

	$('.numpad').find('.num').on('click', numpad.putNumber);
	$('.numpad').find('.backspace').on('click', numpad.backspace);
	
	//$('#numero-voto').on('keyup', eleicao.verificarNumeroDoCandidato);
	$('#numero-voto').mask('00');
	
	$()
});
