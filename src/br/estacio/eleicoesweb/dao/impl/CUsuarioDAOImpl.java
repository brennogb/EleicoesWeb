package br.estacio.eleicoesweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import br.estacio.eleicoesweb.dao.CConnectionFactory;
import br.estacio.eleicoesweb.dao.CUsuarioDAO;
import br.estacio.eleicoesweb.entidades.CUsuario;

public class CUsuarioDAOImpl implements CUsuarioDAO {

	@Override
	public void inserir(CUsuario entidade) {
		String sql = "INSERT INTO USUARIOS VALUES(?,?,?)";
		
		try {
			Connection connection = CConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, entidade.getCnome());
			ps.setString(1, entidade.getCemail());
			ps.setString(1, entidade.getCsenha());
			ps.execute();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void atualizar(CUsuario entidade) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(CUsuario entidade) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CUsuario> listar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CUsuario obterPorId(long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
