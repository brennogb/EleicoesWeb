var Numpad = function () {};

Numpad.prototype.putNumber = function (event) {
	event.preventDefault();
	var btn = $(event.target);
	var num = btn.text();
	var inputVoto = $('#numero-voto');
	var numVoto = inputVoto.val();
	var MAX_LENGTH = 5;
	
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
	$('#numero-voto').mask('00000');
	
	$()
});

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
        alert("Teste");
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
}