package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.implementations.DAOCategorieImp;
import dao.implementations.DAOProduitImp;
import dao.interfaces.DAOProduit;
import modele.Categorie;

/**
 * Servlet implementation class ProductsServlet
 */
@WebServlet("/Products")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private static final String PRODUCTS_VUE="/WEB-INF/products.jsp";
    
    private static final String FACTORY_A_SCOPE_ATTRIBUTE="FACTORY";
    private static final String CATEGORIES_R_SCOPE_ATTRIBUTE="listCategorie";
    
    private EntityManagerFactory factory;
    
    
    @Override
    	public void init() throws ServletException {
    		// TODO Auto-generated method stub
    		this.factory=(EntityManagerFactory)this.getServletContext().getAttribute(FACTORY_A_SCOPE_ATTRIBUTE);
    	}
    
    
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	doGet(req, resp);
  	
    }
	
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAOProduit dao_produit=new DAOProduitImp(this.factory);		
		DAOCategorieImp dao_cat = new DAOCategorieImp() ;
    	
		
		
		List<Categorie> listCat =  dao_cat.listCategorie() ;
    	
    	request.setAttribute(CATEGORIES_R_SCOPE_ATTRIBUTE,listCat );
    	this.getServletContext().getRequestDispatcher(PRODUCTS_VUE).forward(request, response);
	}

}
