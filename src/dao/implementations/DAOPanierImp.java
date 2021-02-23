package dao.implementations;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.hibernate.Session;
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
	private EntityManagerFactory factory;
	
	public  DAOPanierImp(EntityManagerFactory factory) {
		if(factory == null)
			throw new DAOConfigurationException("EntityFactory manager cannot be NULL");
		else
		{
			this.manager=factory.createEntityManager();
			this.factory = factory;
		}
			
	}
	@Override
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
	
	@Override
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
	@Override
	 public Produit getProduitById(Long idProduit)
	 {
		 Produit prods=null;
			EntityTransaction tr=this.manager.getTransaction();
			tr.begin();
			try
			{
				prods=this.manager.find(Produit.class, idProduit);
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load categorie " + e);
			}
			
			return prods;
	 }
	@Override
	public void ajouterPanier(Panier panier) {
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.merge(panier);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Add panier" + e);
		}
		
	}
	@Override
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

	@Override
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
	@Override
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
	@Override

	public Prod_Panier verifier(Panier PAN,Produit PD) {

		List<Prod_Panier> PDN = null;
		EntityTransaction tr=this.manager.getTransaction();
	Long idPanier= PAN.getIdPanier();
	Long idProduit = PD.getIdProduit();
		Query query;
		//Panier PAN= this.loadPanier(idPanier);
		//Produit PD= this.loadProduit(idProduit);
		tr.begin();
		try
		{
			PDN =(List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.IdPanier=:idPanier and P.IdProduit=:idProduit ").getResultList();
			//PDN =(List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE :PAN MEMBER OF P.panier  AND :PD MEMBER OF  P.produits").getResultList();
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load produit " + e);
		}
		
		return PDN.get(0);
	
	}
	@Override
	public Double calculerTotale(Long idPanier)
	{
		Double totale = (double) 0;
		List<Prod_Panier> col =loadProds_Panier(loadPanier(idPanier));
		
		for(Prod_Panier A: col)
		{
			totale=totale+A.getPrix();
		}
		return totale;
	}
	@Override
	 public void addProd_Panier(int quantite,Long idProduit,Long idPanier){
		EntityManager test = this.factory.createEntityManager();
			EntityTransaction tr=test.getTransaction();
			tr.begin();
			
			try
			{
			Prod_Panier PPPP= new Prod_Panier();
			Produit pr=test.find(Produit.class,idProduit);
			Panier pn=test.find(Panier.class,idPanier);
			PPPP.setQuantite(quantite);
			PPPP.setPanier(pn);
			PPPP.setProduits(pr);
			PPPP.setPrix(pr.getPrix()*quantite);
		    System.out.println("*****************"+PPPP.getPrix()+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
			List<Prod_Panier> PNA = loadProds_Panier(loadPanier(idPanier));
			
			{
				for(Prod_Panier P: PNA)
				{
					if(P.getProduits().getIdProduit() == idProduit)
					{
						P.setQuantite(quantite+P.getQuantite());
						Double qte = P.getProduits().getPrix()*quantite;
						System.out.println("*****************"+qte+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
						P.setPrix(P.getPrix()+(qte));
						test.merge(P);
						System.out.println("*****************"+P.getPrix()+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
						pn.setTotale(calculerTotale(idPanier));
						test.persist(pn);
						tr.commit();
						return;
					}
			
				}
			}
			
			test.persist(PPPP);
			test.persist(pn);
			tr.commit();
				
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Add productToPanier" + e);
			}
	 }

	
	@Override
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
				System.out.println("la quantite est inferieure a 0");
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
	@Override
	public List<Produit> getProduitsParPanier(Long idPanier) {

	
		List<Produit> liste = null;
		List<Prod_Panier> liste1 = null;
		EntityTransaction tr=this.manager.getTransaction();
	
		Query query;
		Panier PAN= this.loadPanier(idPanier);
		tr.begin();
		try
		{
			liste1 = (List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.panier=PAN").getResultList();
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

	@Override
	public List<Produit> getProduitsParAcheteur(Long idAcheteur) {
	
		
		List<Produit> liste = null;
		List<Prod_Panier> liste1 = null;
		EntityTransaction tr=this.manager.getTransaction();
	
		Query query;
		Panier PAN = this.loadPanierParAche(idAcheteur);
		tr.begin();
		try
		{
			liste1 = (List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.panier=PAN").getResultList();
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

	@Override
	public List<Prod_Panier> loadProds_Panier(Panier panier) {
		
		List<Prod_Panier> liste1 = null;
		EntityTransaction tr=this.manager.getTransaction();
	
		Query query;
		tr.begin();
		try
		{
			liste1 = (List<Prod_Panier>)this.manager.createQuery("SELECT P FROM Prod_Panier P WHERE P.panier=panier").getResultList();
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load produitPanier " + e);
		}
		
		return liste1;
	}

	
	

	
	
	
	
}
