$(document).ready(function() {
	$('.numpad').find('.btn').on('click', function() {
		var num = $(this).text();
		var inputVoto = $('#numero-voto');
		var numVoto = inputVoto.val();
		
		if (numVoto.length < 2) {
			inputVoto.val(numVoto + num);
		}
	});
});