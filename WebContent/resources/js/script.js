var Numpad = function () {
	this.MAX_LENGTH = 5;
};

Numpad.prototype.putNumber = function () {
		const MAX_LENGTH = 5;
		var num = $(this).text();
		var inputVoto = $('#numero-voto');
		var numVoto = inputVoto.val();
		
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
	 $('[data-toggle="tooltip"]').tooltip();
	
	$('.numpad').find('.btn').on('click', Numpad.putNumber);
	
	$('#numero-voto').on('keyup', Eleicao.verificarNumeroDoCandidato);
});