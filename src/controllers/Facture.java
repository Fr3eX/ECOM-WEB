package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.implementations.DAOFactureImp;
import modele.Produit;
import modele.User;

/**
 * Servlet implementation class Facture
 */
@WebServlet("/Facture")
public class Facture extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE="/WEB-INF/Facture.jsp";
	private static final String SIGNIN_VUE="/WEB-INF/signIn.jsp";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		User user = (User)session.getAttribute("USER");
		
		if(session.getAttribute("USER") == null)
		{
			//REDIRECTION AND NOT FORWARDING ! 
			//response.sendRedirect(request.getContextPath() + HOME_VUE);
			this.getServletContext().getRequestDispatcher(SIGNIN_VUE).forward(request, response);
			return;
		}
		EntityManagerFactory factory=Persistence.createEntityManagerFactory("FIRST_UNIT");
		DAOFactureImp daoFacture = new DAOFactureImp(factory);
		List<Produit> listeProduits = daoFacture.getProductsFromCart(user.getIdUser());
		request.setAttribute("listeProduits", listeProduits);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
