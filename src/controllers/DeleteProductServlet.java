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

import dao.implementations.DAOProduitImp;
import metier.forms.AddProductForm;
import modele.Categorie;
import modele.Produit;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE="/WEB-INF/sell.jsp";
	private static final String MESSAGE="probleme lors de l'ajout du produit";
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EntityManagerFactory factory=Persistence.createEntityManagerFactory("FIRST_UNIT");
		
		DAOProduitImp daoProduit = new DAOProduitImp(factory);
		Long i = Long.parseLong(request.getParameter("productId"));
		System.out.println("**********************"+i+"*****************************");
		daoProduit.supprimerProduit(i);
		List<Produit> listeProduits = daoProduit.getProduitsParVendeure(new Long(1));
		request.setAttribute("listeProduits", listeProduits);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
