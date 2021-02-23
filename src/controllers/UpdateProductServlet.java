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
import modele.Categorie;
import modele.Produit;
import modele.User;
import modele.Vendeur;

@WebServlet("/UpdateProduct")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE="/WEB-INF/sell.jsp";
	private static final String MESSAGE="probleme lors de l'ajout du produit";
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User user = (User)session.getAttribute("USER");
		EntityManagerFactory factory=Persistence.createEntityManagerFactory("FIRST_UNIT");
		
		DAOProduitImp daoProduit = new DAOProduitImp(factory);
		String catName = (String)request.getParameter("categorie");
		String designation = (String)request.getParameter("designation");
		String description = (String)request.getParameter("description");
		int quantite = Integer.parseInt(request.getParameter("quantite"));
		boolean value = true;
		Long idProduit = Long.parseLong(request.getParameter("productIdUpdate"));
		Categorie cat = daoProduit.loadCategorieByName(catName);
		
		int test = daoProduit.updateProduct(idProduit, designation, quantite, description, cat, value);
		if(test == 0) {
			System.out.println("update failed");
		}
		else {
			List<Produit> listeProduits = daoProduit.getProduitsParVendeure(user.getIdUser());
			request.setAttribute("listeProduits", listeProduits);
			this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
