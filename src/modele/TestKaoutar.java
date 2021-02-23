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
		
		/*Panier pan= new Panier();
		Long X=(long) 1;
		pan.setIdPanier(X);
		
		Acheteur ACHA= new Acheteur();
		ACHA.setIdUser(1);
		pan.setAcheteur(ACHA);
	
		pma.ajouterPanier(pan);
		
		Prod_Panier Prodf = new Prod_Panier();
		Prodf.setPanier(pan);*/
		
		//AjouterDansPanier(Prod_Panier produitP)
		
		Panier PN = new Panier();
		Long S = (long) 5;
		//PN.setIdPanier(S);
		//PN.setTotale(800.0);
		
		//Prod_Panier PP = new Prod_Panier(2, 80.0);A
	//	Prod_Panier PP1 = new Prod_Panier(4, 14.5);
	//	Prod_Panier PP2 = new Prod_Panier(3, 30.0);
	//	Prod_Panier PP3 = new Prod_Panier(7, 70.0);
		
	//	pma.AjouterDansPanier(PP);
	//	pma.AjouterDansPanier(PP1);
		//pma.AjouterDansPanier(PP2);
	//	pma.AjouterDansPanier(PP3);
		
		Long A= (long) 4;
		//pma.addProd_Panier(2,A, S);
		//pma.ajouterPanier(PN);
		
		//pma.modifierPanier(S,700.0);
		
	//	Prod_Panier PNAA= new Prod_Panier();
		//PNAA.setIde(S);
		
		//pma.modifierDansPanier(PNAA , 1000);
		//Panier PAN = new Panier();
	//	PAN.setIdPanier(S);
	//	Produit PD = new Produit();
	//	PD.setIdProduit(A);
		
		
	//	Prod_Panier AA = (pma.verifier(PAN, PD));
		//System.out.print(AA.toString());
		 
		Prod_Panier  BB = new Prod_Panier();
		Long C = (long) 25;
		BB.setIde(C);
	//	pma.supprimerDuPanier(BB);
		
		//Acheteur ACH = new Acheteur();
		Long D= (long) 1;
		
		
		pma.loadPanierParAche( D);
	}
}