package modele;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.apache.commons.validator.routines.EmailValidator;

import dao.exceptions.DAOException;
import dao.implementations.DAOProduitImp;
import dao.implementations.DAOUserImp;
import dao.interfaces.DAOUser;

public class Test {

	public static void main(String[] args) {
		
		
		

		// TODO Auto-generated method stub
		EntityManagerFactory fac=Persistence.createEntityManagerFactory("FIRST_UNIT");
		DAOProduitImp pm = new DAOProduitImp(fac);
		
		List<Produit> list = pm.getProduitsParCategorie(1);
		
		System.out.println(list.get(0));
		/*
		Produit produit = new Produit();
		produit.setQuantite(12);
		
		Vendeur vendeur = pm.loadSeller(new Long(1));
		Categorie cat = pm.loadCategorie(1);
		
		produit.setDescription("bonne produit ddd bla bla");
		produit.setDesignation("produit 00");
		produit.setCategorie(cat);
		produit.setVendeur(vendeur);
		produit.setQuantite(5);
		produit.setAppreciationNeg(0);
		produit.setAppreciationPos(0);
		produit.setPrix(40.0);
		produit.setImagePath("test5");
		
		pm.ajouterProduit(produit);
		
		
		/*
		EntityManagerFactory fac=Persistence.createEntityManagerFactory("FIRST_UNIT");
		
		User user=new Vendeur();
		user.setAdresse("CASA MAROC");
		user.setEmail("bounifomar44@gmail.com");
		user.setNom("Omar");
		user.setPassword("12345");
		((Vendeur)user).setChiffreAffaireVente(525.0);
		
		DAOUser dao_user=new DAOUserImp(fac);
		dao_user.addUser(user);
		try
		{
			user=dao_user.loadUser("omar@gmai.com");
			System.out.println(user.getPassword());
		}
		catch (DAOException e) {
			System.out.println( e.getMessage());
		}
		
		*/
	}

}
