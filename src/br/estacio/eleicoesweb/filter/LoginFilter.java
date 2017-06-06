package br.estacio.eleicoesweb.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.estacio.eleicoesweb.dao.CandidatoDAO;
import br.estacio.eleicoesweb.dao.impl.CandidatoDAOImpl;
import br.estacio.eleicoesweb.entidades.CUsuario;
import br.estacio.eleicoesweb.entidades.Candidato;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter(dispatcherTypes = {
				DispatcherType.REQUEST, 
				DispatcherType.FORWARD, 
				DispatcherType.INCLUDE
		}
					, urlPatterns = { "/cadastroCandidato.jsp", "/estatisticaEleicao.jsp" })
public class LoginFilter implements Filter {
	
	private String contextPath;
	
    /**
     * Default constructor. 
     */
    public LoginFilter() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletResponse res = (HttpServletResponse) response;
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        
        CUsuario usuarioLogado = (CUsuario) session.getAttribute("usuarioLogado");
        
        if(usuarioLogado == null) {
        	session.setAttribute("msgErro", "Usuário necessita estar logado para executar essa operação!");
        	res.sendRedirect(contextPath + "/erro.jsp");
        } else {
        	if (req.getRequestURI().equals(contextPath + "/estatisticaEleicao.jsp")) {
        		CandidatoDAO candidatoDAO = new CandidatoDAOImpl();
        		List<Candidato> candidatos = candidatoDAO.listar();
        		Integer totalEleicao = candidatoDAO.obterTotalVotosEleicao();
        		session.setAttribute("listaCandidatos", candidatos);
        		session.setAttribute("totalEleicao", totalEleicao);
        	}
        	chain.doFilter(request, response);
        }
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.contextPath = fConfig.getServletContext().getContextPath();
	}

}
