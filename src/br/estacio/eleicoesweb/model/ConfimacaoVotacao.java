package br.estacio.eleicoesweb.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.estacio.eleicoesweb.dao.impl.CandidatoDAOImpl;
import br.estacio.eleicoesweb.entidades.Candidato;

/**
 * Servlet implementation class ConfimacaoVotacao
 */
@WebServlet("/FinalizarVotacao")
public class ConfimacaoVotacao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfimacaoVotacao() {
        super();
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
		CandidatoDAOImpl candidatoDAO = new CandidatoDAOImpl();
		String numeroVoto = request.getParameter("NumVoto");
		Candidato votado = candidatoDAO.obterPorNumeroCandidato(numeroVoto);
		Integer totalVotos = candidatoDAO.obterTotalVotos(votado);
		candidatoDAO.registrarVoto(votado, ++totalVotos);
		response.sendRedirect("votoSucesso.jsp");
	}

}
