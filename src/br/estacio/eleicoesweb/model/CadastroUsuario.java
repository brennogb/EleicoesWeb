package br.estacio.eleicoesweb.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.estacio.eleicoesweb.dao.CUsuarioDAO;
import br.estacio.eleicoesweb.dao.impl.CUsuarioDAOImpl;
import br.estacio.eleicoesweb.entidades.CUsuario;

/**
 * Servlet implementation class CadastroUsuario
 */
@WebServlet("/CadastroUsuario")
public class CadastroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CUsuario cUsuario = new CUsuario();
	private CUsuarioDAO cUsuarioDAO = new CUsuarioDAOImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroUsuario() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cUsuario.setCnome(request.getParameter("nome"));
		cUsuario.setCemail(request.getParameter("email"));
		cUsuario.setCsenha(request.getParameter("senha"));
		cUsuarioDAO.inserir(cUsuario);
		response.sendRedirect("usuarioSucesso");
	}

}
