package br.estacio.eleicoesweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import br.estacio.eleicoesweb.dao.CConnectionFactory;
import br.estacio.eleicoesweb.dao.CUsuarioDAO;
import br.estacio.eleicoesweb.entidades.CUsuario;

public class CUsuarioDAOImpl implements CUsuarioDAO {

	@Override
	public void inserir(CUsuario entidade) {
		String sql = "INSERT INTO USUARIOS(nome, email, senha) VALUES(?,?,?)";
		Connection connection = CConnectionFactory.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, entidade.getCnome());
			ps.setString(2, entidade.getCemail());
			ps.setString(3, entidade.getCsenha());
			ps.executeUpdate();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
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
	
	public CUsuario obterPorLoginESenha(String login, String senha) {
		String sql = "SELECT * FROM USUARIOS WHERE email = ? AND senha = ?";

		try (Connection connection = CConnectionFactory.getConnection();
				PreparedStatement ps = connection.prepareStatement(sql);) {

			ps.setString(1, login);
			ps.setString(2, senha);

			CUsuario usuario = null;
			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {
					usuario = new CUsuario();
					usuario.setCemail(rs.getString("email"));
					usuario.setCsenha(rs.getString("senha"));
				}
			}

			return usuario;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} 
	}
}
