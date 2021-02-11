package modele;

import javax.persistence.EntityManagerFactory;

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
		Produit produit = new Produit();
		produit.setQuantite(12);
		Categorie cat = new Categorie();
		cat.setNomCategorie("cat1");
		cat.setIdCategorie(1);
		DAOProduitImp pm = new DAOProduitImp();
		pm.ajouterProduit("produit 1", 12, 30.0, "bla bla", 12.2,cat,true,"test", new Long(1));
		
		/*
		EntityManagerFactory fac=Persistence.createEntityManagerFactory("FIRST_UNIT");
		
		User user=new Vendeur();
		user.setAdresse("CASA MAROC");
		user.setEmail("bounifomar44@gmail.com");
		user.setNom("Omar");
		user.setPassword("12345");
		((Vendeur)user).setChiffreAffaireVente(525.0);
		
		DAOUser dao_user=new DAOUserImp(fac);
		
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
