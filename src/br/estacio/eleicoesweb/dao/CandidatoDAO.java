package br.estacio.eleicoesweb.dao;

import br.estacio.eleicoesweb.entidades.Candidato;

public interface CandidatoDAO extends CAbstractDAO<Candidato> {
	Candidato obterPorNumeroCandidato(String numero);
	Integer obterTotalVotosEleicao();
	Candidato obterPorNome(String nome);
	void registrarVoto(Candidato c, Integer votos);
}
