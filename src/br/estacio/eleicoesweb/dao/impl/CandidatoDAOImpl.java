package br.estacio.eleicoesweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.estacio.eleicoesweb.dao.CConnectionFactory;
import br.estacio.eleicoesweb.dao.CandidatoDAO;
import br.estacio.eleicoesweb.entidades.Candidato;

public class CandidatoDAOImpl implements CandidatoDAO {

	@Override
	public void inserir(Candidato entidade) {
		String sql = "INSERT INTO CANDIDATOS(nome, numero) VALUES(?,?)";
		Connection connection = CConnectionFactory.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, entidade.getNome());
			ps.setString(2, entidade.getNumero());
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
	public void atualizar(Candidato entidade) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(Candidato entidade) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Candidato> listar() {
		String sql = "select * from CANDIDATOS order by total_votos desc";
		List<Candidato> candidatos = new ArrayList<>();
		Candidato candidato = null;
		Connection connection = CConnectionFactory.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				candidato = new Candidato();
				candidato.setNome(rs.getString("nome"));
				candidato.setNumero(rs.getString("numero"));
				candidato.setVotos(rs.getInt("total_votos"));
				candidatos.add(candidato);
			}
		} catch (NumberFormatException | SQLException e) {
			return null;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		return candidatos;
	}

	@Override
	public Candidato obterPorId(long id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Candidato obterPorNumeroCandidato(String numero) {
		Candidato candidato = null;
		String sql = "SELECT * FROM CANDIDATOS WHERE numero=?";
		Connection connection = CConnectionFactory.getConnection();
		try {
			Integer numeroVoto = Integer.parseInt(numero);
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, numeroVoto);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				candidato = new Candidato();
				candidato.setNome(rs.getString("nome"));
				candidato.setNumero(rs.getString("numero"));
				candidato.setVotos(rs.getInt("total_votos"));
			}
		} catch (NumberFormatException | SQLException e) {
			return null;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		return candidato;
	}
	
	public Integer obterTotalVotos(Candidato c) {
		int total = 0;
		String sql = "SELECT total_votos FROM CANDIDATOS WHERE numero=?";
		Connection connection = CConnectionFactory.getConnection();
		
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, c.getNumero());
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				total = rs.getInt("total_votos");
			}
		} catch (NumberFormatException | SQLException e) {
			return null;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		return total;
	}
	
	public Integer obterTotalVotosEleicao() {
		int total = 0;
		String sql = "select sum(total_votos) as total_eleicao from CANDIDATOS";
		Connection connection = CConnectionFactory.getConnection();
		
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				total = rs.getInt("total_eleicao");
			}
		} catch (NumberFormatException | SQLException e) {
			return null;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		return total;
	}
	
	public void registrarVoto(Candidato c, Integer votos) {
		String sql = "UPDATE CANDIDATOS SET total_votos = ? WHERE numero = ?";
		Connection connection = CConnectionFactory.getConnection();
		
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, votos);
			ps.setString(2, c.getNumero());
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

}
