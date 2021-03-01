package dao.interfaces;

import java.util.List;

import modele.Produit;

public interface DAOProduit {
	
	public void ajouterProduit(Produit produit) ;
	
	public Produit loadProduct(Long id) ;
	
	public Produit modifierProduct(Produit prod) ;
	
	public void supprimerProduit(Long idProduit) ;
	   
	public List<Produit> getProduitsParVendeure(Long idVendeur);
	
	public List<Produit> getProduitsParCategorie(int idCategorie);
	
	public List<Produit> getProduitsParCategorieEtPrix(int idCategorie , double prixMin,double prixMax);
	 
	public List<Produit> getProduitsParPrixMaxEtMin( double prixMin,double prixMax);
	
	public List<Produit> getProduitsParPrix(double prixMax);
	
}
