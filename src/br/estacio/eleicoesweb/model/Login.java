package br.estacio.eleicoesweb.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.estacio.eleicoesweb.dao.impl.CUsuarioDAOImpl;
import br.estacio.eleicoesweb.entidades.CUsuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Logar")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("erro.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CUsuarioDAOImpl usuarioDAO = new CUsuarioDAOImpl();
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		CUsuario usuarioLogado = usuarioDAO.obterPorLoginESenha(email, senha);
		
		if (usuarioLogado != null) {
			request.getSession().setAttribute("usuarioLogado", usuarioLogado);
			response.sendRedirect("index.jsp");
		} else {
			request.getSession().setAttribute("msgErro", "E-mail e/ou senha inválidos");
			response.sendRedirect("erro.jsp");
		}
	}

}
