package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.implementations.DAOCategorieImp;
import modele.Categorie;

import java.util.List;
/**
 * Servlet implementation class Home
 */


@WebServlet("/Home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String VUE="/WEB-INF/home.jsp";
   
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	doGet(req, resp);
    		
    }
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	DAOCategorieImp dao = new DAOCategorieImp() ;
    	List<Categorie> listcat =  dao.listCategorie() ; 
    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
