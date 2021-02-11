package dao.implementations;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.*;

import modele.*;

public class DAOProduitImp {
   public Categorie trouverCategorie(int id) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    transac.begin();
	    Categorie cat = em.find(Categorie.class, id);
	    transac.commit();
	    em.close();    
	    emf.close(); 
	    return cat;
   }
   public Vendeur trouverVendeur(Long id) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    transac.begin();
	    Vendeur ven = em.find(Vendeur.class, id);
	    transac.commit();
	    em.close();    
	    emf.close(); 
	    return ven;
  }
  
   public void ajouterProduit(String designation, int quantite, Double prix, String description, Double promotion,Categorie categorie,boolean newProduct, String imagePath, Long idVendeur) {
	    Vendeur vendeur = this.trouverVendeur(idVendeur);
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");   
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    transac.begin();
	    Produit produit = new Produit();
	    produit.setDesignation(designation);
	    produit.setDescription(description);
	    //la date d'insertion sera la date systeme
	    produit.setDateInsertion(new Date());
	    produit.setCategorie(categorie);
	    produit.setQuantite(quantite);
	    produit.setPrix(prix);
	    produit.setAppreciationNeg(0);
	    produit.setAppreciationPos(0);
	    produit.setPromotion(promotion);
	    produit.setNewProduct(newProduct);
	    produit.setImagePath(imagePath);
	    produit.setVendeur(vendeur);
	    em.persist(produit);
	    transac.commit();
	    em.close();    
	    emf.close(); 
   }
   //this method will return the line that is changed and 0 else 
   public int modifierProduit(Long idProduit,Long idVendeur,String designation, int quantite, Double prix, String description, Double promotion,Categorie categorie,Boolean newProduct) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    //this line should be change because the methode trouverVendeur will be in an ather class
	    Vendeur vendeur = this.trouverVendeur(idVendeur);
	    transac.begin();
	    String queryupdate = "UPDATE Produit SET designation=?1 , quantite=?2 , prix=?3 , description=?4 , promotion=?5 , categorie=?6 , color=?7 , newProduct =?8 WHERE vendeur=?9 AND idProduit=?10"; 
	    Query query = em.createQuery(queryupdate);
	    query.setParameter(1, designation);
	    query.setParameter(2, quantite);
	    query.setParameter(3, prix);
	    query.setParameter(4, description);
	    query.setParameter(5, promotion);
	    query.setParameter(6, categorie);
	    query.setParameter(8, newProduct);
	    query.setParameter(9, vendeur);
	    query.setParameter(10, idProduit);
	    int executeUpdate= query.executeUpdate();
	    transac.commit();
	    em.close();    
	    emf.close(); 
	    return executeUpdate;
 }
   public void supprimerProduit(Long idProduit) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    Produit produit = em.find(Produit.class, idProduit);
	    transac.begin();
	    em.remove(produit);
	    transac.commit();
	    em.close();    
	    emf.close(); 
  }
   public Produit getProduitParId(Long idProduit) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    Produit produit = em.find(Produit.class, idProduit);
	    em.close();    
	    emf.close();  
	    return produit;
   }
   public List<Produit> getProduitsParVendeure(Long idVendeur){
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();  
	    //this line should be change because the methode trouverVendeur will be in an ather class
	    Vendeur ven = this.trouverVendeur(idVendeur);
	    List<Produit> list = (List<Produit>)em.createQuery("SELECT P FROM Produit P where P.vendeur =:vend").setParameter("vend", ven).getResultList();
	    em.close();    
	    emf.close();  
	    return list;
  }
   public List<Produit> getProduitsParCategorie(int idCategorie){
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();
	    //this line should be change because the methode trouverCategorie will be in an ather class
	    Categorie categorie = this.trouverCategorie(idCategorie);
	    List<Produit> list = em.createQuery("SELECT p FROM Produit p WHERE p.categorie =:custName").setParameter("custName", categorie).getResultList();
	    em.close();    
	    emf.close();  
	    return list;
  }

   
   public List<Produit> getProduitsParCategorieEtPrix(int idCategorie , double prixMin,double prixMax){
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();  
	    //this line should be change because the methode trouverCategorie will be in an ather class
	    Categorie categorie = this.trouverCategorie(idCategorie);
	    TypedQuery<Produit> query = em.createQuery("SELECT p FROM Produit p WHERE p.categorie =:categorie and p.prix >= :prixMin and p.prix <= :prixMax",Produit.class);
	    query.setParameter("categorie", categorie);
	    query.setParameter("prixMin", prixMin);
	    query.setParameter("prixMax", prixMax);
	    List<Produit> list = query.getResultList();
	    em.close();    
	    emf.close();  
	    return list;
  }
   
   public List<Produit> getProduitsParPrixMinEtMax( double prixMin,double prixMax){
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();  
	    TypedQuery<Produit> query = em.createQuery("SELECT p FROM Produit p WHERE p.prix >= :prixMin and p.prix <= :prixMax",Produit.class);
	    query.setParameter("prixMin", prixMin);
	    query.setParameter("prixMax", prixMax);
	    List<Produit> list = query.getResultList();
	    em.close();    
	    emf.close();  
	    return list;
 }
   //cette methode va returner tous les produits qui un prix inferieur a prixMax
   public List<Produit> getProduitsParPrix(double prixMax){
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();  
	    TypedQuery<Produit> query = em.createQuery("SELECT p FROM Produit p WHERE p.prix <= :prixMax",Produit.class);
	    query.setParameter("prixMax", prixMax);
	    List<Produit> list = query.getResultList();
	    em.close();    
	    emf.close();  
	    return list;
}
   
}
