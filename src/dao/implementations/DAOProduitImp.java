package dao.implementations;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;

import dao.exceptions.DAOConfigurationException;
import dao.exceptions.DAOException;
import dao.interfaces.DAOProduit;

import javax.persistence.*;

import modele.*;

public class DAOProduitImp implements DAOProduit{
	private EntityManager manager;
	
	public  DAOProduitImp(EntityManagerFactory factory) {
		if(factory == null)
			throw new DAOConfigurationException("EntityFactory manager cannot be NULL");
		else
			this.manager=factory.createEntityManager();
	}
	
	public Categorie loadCategorie(int id) throws DAOException {
		// TODO Auto-generated method stub
		Categorie categorie=null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			categorie=this.manager.find(Categorie.class, id);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load categorie " + e);
		}
		
		return categorie;
	}
	
	public Categorie loadCategorieByName(String name) throws DAOException {
		// TODO Auto-generated method stub
		Categorie categorie=null;
		EntityTransaction tr=this.manager.getTransaction();
		try
		{
			tr.begin();
			categorie = ((List<Categorie>)this.manager.createQuery("SELECT C FROM Categorie C where C.nomCategorie =:name").setParameter("name", name).getResultList()).get(0);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load product " + e);
		}
		
		return categorie;
	}
	
	public Vendeur loadSeller(Long id) throws DAOException {
		// TODO Auto-generated method stub
		Vendeur vendeur=null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			vendeur=this.manager.find(Vendeur.class, id);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load seller " + e);
		}
		
		return vendeur;
	}  
	//@Override
	public void ajouterProduit(Produit produit) throws DAOException {

		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.persist(produit);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Add produit" + e);
		}
	}
	
	
	public Produit loadProduct(Long id) throws DAOException {
		// TODO Auto-generated method stub
		Produit produit=null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			produit=this.manager.find(Produit.class, id);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load Produit " + e);
		}
		
		return produit;
	}
	
	public Produit modifierProduct(Produit prod) throws DAOException {
		Produit produit=null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			produit=this.manager.find(Produit.class, prod.getIdProduit());
			this.manager.persist(prod);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot alter produit " + e);
		}
		
		return produit;
	}
	public int updateProduct(Long idProduit,String designation,int quantite,String description,Categorie categorie,boolean isNew) {
		EntityTransaction tr=this.manager.getTransaction();
		int value=0;
		Query query;
		tr.begin();
		try
		{
			query = this.manager.createQuery("update Produit p set p.designation = ?1 , p.quantite = ?2 , p.description = ?3 , p.categorie=?4 , p.newProduct = ?5 where p.idProduit = ?6 ");
			query.setParameter(1, designation);
			query.setParameter(2, quantite);
			query.setParameter(3, description);
			query.setParameter(4, categorie);
			query.setParameter(5, isNew);
			query.setParameter(6, idProduit);
			value = query.executeUpdate();
			tr.commit();
			
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot alter produit " + e);
		}
		return value;
		
	}
	
	
	   public void supprimerProduit(Long idProduit) {
			EntityTransaction tr=this.manager.getTransaction();
			tr.begin();
			try
			{
			    Produit produit = this.manager.find(Produit.class, idProduit);
			    if(produit == null) {
			    	System.out.println("test");
			    }
			    this.manager.remove(produit);
			    tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot remove produit" + e);
			}
	  }
	   //afficher tous les produit
		public List<Produit> getProduits(){
			List<Produit> list = null;
			EntityTransaction tr=this.manager.getTransaction();
			Query query;
			
			tr.begin();
			try
			{
				list = (List<Produit>)this.manager.createQuery("SELECT P FROM Produit P").getResultList();
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load produit " + e);
			}
			
			return list;
		}
	   
	public List<Produit> getProduitsParVendeure(Long idVendeur){
		List<Produit> list = null;
		EntityTransaction tr=this.manager.getTransaction();
		Query query;
		
		Vendeur ven = this.loadSeller(idVendeur);
		tr.begin();
		try
		{
			list = (List<Produit>)this.manager.createQuery("SELECT P FROM Produit P where P.vendeur =:ven").setParameter("ven", ven).getResultList();
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load produit " + e);
		}
		
		return list;
	}
	
	public List<Produit> getProduitsParCategorie(int idCategorie){
		List<Produit> list = null;
		EntityTransaction tr=this.manager.getTransaction();
		Query query;
		
		Categorie cat = this.loadCategorie(idCategorie);
		try
		{
			tr.begin();
			list = (List<Produit>)this.manager.createQuery("SELECT P FROM Produit P where P.categorie =:cat").setParameter("cat", cat).getResultList();
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load product " + e);
		}
		
		return list;
	}
	
	 public List<Produit> getProduitsParCategorieEtPrix(int idCategorie , double prixMin,double prixMax){
			List<Produit> list = null;
			EntityTransaction tr=this.manager.getTransaction();
			TypedQuery<Produit> query;
			tr.begin();
			Categorie cat = this.loadCategorie(idCategorie);
			try
			{
				query =this.manager.createQuery("SELECT p FROM Produit p WHERE p.categorie =:categorie and p.prix >= :prixMin and p.prix <= :prixMax",Produit.class);
			    query.setParameter("categorie", cat);
			    query.setParameter("prixMin", prixMin);
			    query.setParameter("prixMax", prixMax);
			    list = query.getResultList();
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load products " + e);
			}
			
			return list;
	 }
	 
	 public List<Produit> getProduitsParPrixMaxEtMin( double prixMin,double prixMax){
			List<Produit> list = null;
			EntityTransaction tr=this.manager.getTransaction();
			TypedQuery<Produit> query;
			tr.begin();
			try
			{
				query =this.manager.createQuery("SELECT p FROM Produit p WHERE p.prix >= :prixMin and p.prix <= :prixMax",Produit.class);
			    query.setParameter("prixMin", prixMin);
			    query.setParameter("prixMax", prixMax);
			    list = query.getResultList();
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load products " + e);
			}
			
			return list;
	 }
	   public List<Produit> getProduitsParPrix(double prixMax){
			List<Produit> list = null;
			EntityTransaction tr=this.manager.getTransaction();
			TypedQuery<Produit> query;
			tr.begin();
			try
			{
			    query = this.manager.createQuery("SELECT p FROM Produit p WHERE p.prix <= :prixMax",Produit.class);
			    query.setParameter("prixMax", prixMax);
			    list = query.getResultList();
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load products " + e);
			}
			
			return list;
	   }
	   
	   public Panier getPanier(Acheteur acheteur){
			List<Panier> list = null;
			EntityTransaction tr=this.manager.getTransaction();
			TypedQuery<Panier> query;
			tr.begin();
			try
			{
			    query = this.manager.createQuery("SELECT p FROM Panier p WHERE p.acheteur=:acheteur",Panier.class);
			    query.setParameter("acheteur", acheteur);
			    list = query.getResultList();
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load products " + e);
			}
			
			return list.get(0);
	   }
		public Acheteur loadAcheteur(Long id) throws DAOException {
			// TODO Auto-generated method stub
			Acheteur acheteur=null;
			EntityTransaction tr=this.manager.getTransaction();
			tr.begin();
			try
			{
				acheteur=this.manager.find(Acheteur.class, id);
				tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot Load seller " + e);
			}
			
			return acheteur;
		}
		
		   public List<Produit> getProduitsFromPanier(Acheteur acheteur){
			   Panier panier = this.getPanier(acheteur);
				List<Produit> list = null;
				EntityTransaction tr=this.manager.getTransaction();
				TypedQuery<Produit> query;
				tr.begin();
				try
				{
				    query = this.manager.createQuery("SELECT p FROM Produit p WHERE p.panier=:panier",Produit.class);
				    query.setParameter("panier", panier);
				    list = query.getResultList();
					tr.commit();
				}
				catch (Exception e) {
					tr.rollback();
					throw new DAOException("Cannot Load products " + e);
				}
				
				return list;
		   }
		   
			public void addProductToPanier(Long idProduit,Acheteur acheteur) throws DAOException {

				EntityTransaction tr=this.manager.getTransaction();
				Query query;
				Panier panier = this.getPanier(acheteur);
				tr.begin();
				try
				{
				    query = this.manager.createQuery("update Produit p set p.panier=:panier WHERE p.idProduit=:idProduit");
				    query.setParameter("panier", panier);
				    query.setParameter("idProduit", idProduit);
				    query.executeUpdate();
					tr.commit();
				}
				catch (Exception e) {
					tr.rollback();
					throw new DAOException("Cannot Add produit" + e);
				}
			}
			
		
	   
	   
	   
}
