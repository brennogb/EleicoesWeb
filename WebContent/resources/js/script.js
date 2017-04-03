var Numpad = function () {};

Numpad.prototype.putNumber = function (event) {
	event.preventDefault();
	console.log(event);
	console.log(this);
	var btn = $(event.target);
	var num = btn.text();
	var inputVoto = $('#numero-voto');
	var numVoto = inputVoto.val();
	var MAX_LENGTH = 5;
	
	if (numVoto.length < MAX_LENGTH) {
		inputVoto.val(numVoto + num);
	}
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
	
	$('.numpad').find('.btn-primary').on('click', numpad.putNumber);
	
	$('#numero-voto').on('keyup', eleicao.verificarNumeroDoCandidato);
	
	$()
});