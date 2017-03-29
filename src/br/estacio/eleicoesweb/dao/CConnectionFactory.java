package br.estacio.eleicoesweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class CConnectionFactory {
	
	private static final String SERVIDOR = "jdbc:mysql://localhost:3306/eleicoes";
	private static final String USUARIO = "root";
	private static final String SENHA = "qwe123";
	
	private static Connection connection;
	
	private CConnectionFactory () {
		
	}
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(SERVIDOR, USUARIO, SENHA);
		} catch (SQLException | ClassNotFoundException ex) {
			throw new RuntimeException(ex);
		}
		return connection;
	}
}
