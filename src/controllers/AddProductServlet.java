package controllers;

import java.io.IOException;

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

@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String VUE="/WEB-INF/sell.jsp";
	private static final String MESSAGE="probleme lors de l'ajout du produit";
       
    public AddProductServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManagerFactory factory=Persistence.createEntityManagerFactory("FIRST_UNIT");
		AddProductForm apf = new AddProductForm();
		Produit produit = apf.addProduit(request);
		DAOProduitImp daoProduit = new DAOProduitImp(factory);
		String catName = (String)request.getParameter("categorie");
		Categorie cat = daoProduit.loadCategorieByName(catName);
		if(produit != null) {
			produit.setCategorie(cat);
			daoProduit.ajouterProduit(produit);
			request.setAttribute("designation", produit.getDesignation());
			this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
		else {
			request.setAttribute("message_erreur", MESSAGE);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
