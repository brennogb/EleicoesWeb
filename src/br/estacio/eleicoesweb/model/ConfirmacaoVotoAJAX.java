package br.estacio.eleicoesweb.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import br.estacio.eleicoesweb.dao.CandidatoDAO;
import br.estacio.eleicoesweb.dao.impl.CandidatoDAOImpl;
import br.estacio.eleicoesweb.entidades.Candidato;

/**
 * Servlet implementation class ConfirmacaoVotoAJAX
 */
@WebServlet("/ConfirmacaoVotoAJAX")
public class ConfirmacaoVotoAJAX extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ENCODING = "UTF-8";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmacaoVotoAJAX() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(ENCODING);
        response.setCharacterEncoding(ENCODING);
        CandidatoDAO candidatoDAO = new CandidatoDAOImpl();
        String nomeCandidato = request.getParameter("nome");
        Candidato candidato = candidatoDAO.obterPorNome(nomeCandidato);
        Integer totalVotos = candidato.getVotos();
        candidatoDAO.registrarVoto(candidato, ++totalVotos);
        JSONObject json = new JSONObject();
        
        try {
            if(candidato != null) {
            	json.put("respostaServidor", "Voto registrado com sucesso!");
            }
        } catch (JSONException ex) {
        	throw new RuntimeException(ex.getMessage());
        }

        PrintWriter out = response.getWriter();
        out.print(json.toString());
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
