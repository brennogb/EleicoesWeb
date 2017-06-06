package br.estacio.eleicoesweb.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.estacio.eleicoesweb.dao.CandidatoDAO;
import br.estacio.eleicoesweb.dao.impl.CandidatoDAOImpl;
import br.estacio.eleicoesweb.entidades.Candidato;

/**
 * Servlet implementation class VotoService
 */
@WebServlet("/Votar")
public class VotoService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VotoService() {
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
		String numeroVoto = request.getParameter("numeroVoto");
		CandidatoDAO candidatoDAO = new CandidatoDAOImpl();
		Candidato candidato = candidatoDAO.obterPorNumeroCandidato(numeroVoto);
		
		if (candidato != null) {
			request.setAttribute("candidato", candidato);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/confirmacaoVoto.jsp");
			rd.forward(request, response);
		} else {
			request.getSession().setAttribute("msgErro", "Candidato não encontrado!");
			response.sendRedirect("erro.jsp");
		}
	}

}
