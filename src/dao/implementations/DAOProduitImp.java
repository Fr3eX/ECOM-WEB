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
		// TODO Auto-generated method stub
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
	
	   public void supprimerProduit(Long idProduit) {
			EntityTransaction tr=this.manager.getTransaction();
			tr.begin();
			try
			{
			    Produit produit = this.manager.find(Produit.class, idProduit);
			    this.manager.remove(produit);
			    tr.commit();
			}
			catch (Exception e) {
				tr.rollback();
				throw new DAOException("Cannot remove produit" + e);
			}
	  }
	   
	public List<Produit> getProduitsParVendeure(Long idVendeur){
		List<Produit> list = null;
		EntityTransaction tr=this.manager.getTransaction();
		Query query;
		tr.begin();
		Vendeur ven = this.loadSeller(idVendeur);
		try
		{
			list = (List<Produit>)this.manager.createQuery("SELECT P FROM Produit P where P.categorie =:cat").setParameter("cat", ven).getResultList();
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
	   
}
