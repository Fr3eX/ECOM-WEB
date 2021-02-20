package dao.implementations;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import dao.exceptions.DAOConfigurationException;
import dao.exceptions.DAOException;
import dao.interfaces.DAOPanier;
import dao.interfaces.DAOProduit;
import modele.Acheteur;
import modele.Categorie;
import modele.Panier;
import modele.Produit;
import modele.Prod_Panier;

public class DAOPanierImp implements DAOPanier{


	private EntityManager manager;

	public  DAOPanierImp(EntityManagerFactory factory) {
		if(factory == null)
			throw new DAOConfigurationException("EntityFactory manager cannot be NULL");
		else
			this.manager=factory.createEntityManager();
	}
	
	public Panier loadPanier(Long idPanier) {
		
		Panier panier = null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			panier=this.manager.find(Panier.class, idPanier);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load panier " + e);
		}
		
		return panier;
	}

	public Panier loadPanierParAche(Long idAcheteur) {
		
		Panier panier = null;
		Acheteur Ach = null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		
		try
		{
			Ach =this.manager.find(Acheteur.class, idAcheteur);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load panier " + e);
		}
		panier=Ach.getPanier();
		
		return panier;
	}


	public void ajouterPanier(Panier panier) {
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.persist(panier);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Add panier" + e);
		}
		
	}

	public void modifierPanier(Long idPanier , Double NouvTotal) {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			
			Panier PAN=this.manager.find(Panier.class, idPanier);
			PAN.setTotale(NouvTotal);
			this.manager.merge(PAN);
			
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot alter panier " + e);
		}
		
	}


	public void supprimerPanier(Long idPanier) {
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
		    Panier pan = this.manager.find(Panier.class, idPanier);
		    if(pan == null) {
		    	System.out.println("test");
		    }
		    this.manager.remove(pan);
		    tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot remove panier" + e);
		}
		
	}

	public void AjouterDansPanier(Prod_Panier produitP) {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.persist(produitP);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Add productToPanier" + e);
		}
		
	}

	public void modifierDansPanier(Prod_Panier ProdPanier , int quantity) {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			
			Prod_Panier PRODP=this.manager.find(Prod_Panier.class, ProdPanier.getIde());
			Produit produit=this.manager.find(Produit.class, PRODP.getProduits());
			if(quantity >=1)
			{
				PRODP.setQuantite(quantity);
				PRODP.setPrix(quantity*produit.getPrix());
				
				this.manager.merge(PRODP);
				
				tr.commit();
			}
			else
			{
				System.out.println("la quantite est inferiure a 0");
			}
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot alter panier " + e);
		}
		
	}

	@Override
	public void supprimerDuPanier(Prod_Panier produitP) {
	
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
		    Prod_Panier pan = this.manager.find(Prod_Panier.class, produitP.getIde());
		    if(pan == null) {
		    	System.out.println("test");
		    }
		    this.manager.remove(pan);
		    tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot remove ligneDuPanier" + e);
		}
	}

	public List<Produit> getProduitsParPanier(Long idPanier) {

	
		List<Produit> liste = null;
		List<Prod_Panier> liste1 = null;
		EntityTransaction tr=this.manager.getTransaction();
	
		Query query;
		Panier PAN= this.loadPanier(idPanier);
		tr.begin();
		try
		{
			liste1 = (List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.panier=:PAN").getResultList();
			for(Prod_Panier PR: liste1)
			{
				liste.add(PR.getProduits());
			}
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load produit " + e);
		}
		
		return liste;
	
	}

	
	public List<Produit> getProduitsParAcheteur(Long idAcheteur) {
	
		
		List<Produit> liste = null;
		List<Prod_Panier> liste1 = null;
		EntityTransaction tr=this.manager.getTransaction();
	
		Query query;
		Panier PAN = this.loadPanierParAche(idAcheteur);
		tr.begin();
		try
		{
			liste1 = (List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.panier=:PAN").getResultList();
			for(Prod_Panier PR: liste1)
			{
				liste.add(PR.getProduits());
			}
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load produit " + e);
		}
		
		return liste;
	}

	
	public List<Prod_Panier> loadProds_Panier(Panier panier) {
		
		List<Prod_Panier> liste1 = null;
		EntityTransaction tr=this.manager.getTransaction();
	
		Query query;
		tr.begin();
		try
		{
			liste1 = (List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.panier=:panier").getResultList();
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load produitPanier " + e);
		}
		
		return liste1;
	}

	
	

	
	
	
	
}
