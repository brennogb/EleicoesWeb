package br.estacio.eleicoesweb.dao;

import java.util.List;

public interface CAbstractDAO<T> {
	
	public void inserir(T entidade);
	
	public void atualizar(T entidade);
	
	public void excluir(T entidade);
	
	public List<T> listar();
	
	public T obterPorId(long id);
}
