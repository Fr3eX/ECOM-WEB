package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.implementations.DAOCategorieImp;
import modele.Categorie;

/**
 * Servlet implementation class AboutUsServlet
 */
@WebServlet("/AboutUs")
public class AboutUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final String ABOUTUS_VUE="/WEB-INF/aboutUs.jsp";
	private static final String CATEGORIES_R_SCOPE_ATTRIBUTE="listCategorie";	
  
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		doGet(req, resp);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		DAOCategorieImp dao = new DAOCategorieImp() ;
    	List<Categorie> listCat =  dao.listCategorie() ;
    	
    	request.setAttribute(CATEGORIES_R_SCOPE_ATTRIBUTE,listCat );
    	
		this.getServletContext().getRequestDispatcher(ABOUTUS_VUE).forward(request, response);
	}

}
