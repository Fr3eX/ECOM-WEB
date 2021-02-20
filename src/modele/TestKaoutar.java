package modele;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dao.exceptions.DAOException;
import dao.implementations.DAOPanierImp;
import dao.implementations.DAOProduitImp;

public class TestKaoutar {

	private EntityManager manager;
	
	public static void main(String[] args) {
		EntityManagerFactory fac=Persistence.createEntityManagerFactory("FIRST_UNIT");
		DAOPanierImp pma = new DAOPanierImp(fac);
		
		Panier pan= new Panier();
		Long X=(long) 1;
		pan.setIdPanier(X);
		
		Acheteur ACHA= new Acheteur();
		ACHA.setIdUser(1);
		pan.setAcheteur(ACHA);
	
		pma.ajouterPanier(pan);
		
		Prod_Panier Prodf = new Prod_Panier();
		Prodf.setPanier(pan);
		
		//AjouterDansPanier(Prod_Panier produitP)
	}
}