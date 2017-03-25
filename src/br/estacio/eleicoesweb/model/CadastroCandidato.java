package br.estacio.eleicoesweb.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.estacio.eleicoesweb.dao.CandidatoDAO;
import br.estacio.eleicoesweb.dao.impl.CandidatoDAOImpl;
import br.estacio.eleicoesweb.entidades.Candidato;

/**
 * Servlet implementation class CadastroCandidato
 */
@WebServlet("/CadastrarCandidato")
public class CadastroCandidato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroCandidato() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CandidatoDAO candidatoDAO = new CandidatoDAOImpl();
		Candidato candidato = new Candidato();
		candidato.setNome(request.getParameter("nome"));
		candidato.setNumero(request.getParameter("numero"));
		
		candidatoDAO.inserir(candidato);
		response.sendRedirect("candidatoSucesso.jsp");
	}

}
