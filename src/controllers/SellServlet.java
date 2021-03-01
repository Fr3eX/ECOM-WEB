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

import dao.implementations.DAOProduitImp;
import metier.forms.AddProductForm;
import modele.Produit;
import modele.User;

@WebServlet("/SellServlet")
public class SellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE="/WEB-INF/sell.jsp";
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
		DAOProduitImp daoProduit = new DAOProduitImp(factory);
		List<Produit> listeProduits = daoProduit.getProduitsParVendeure(user.getIdUser());
		request.setAttribute("listeProduits", listeProduits);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
