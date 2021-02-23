package dao.interfaces;

import java.util.List;

import modele.Panier;
import modele.Prod_Panier;
import modele.Produit;

public interface DAOPanier {
	
   public void ajouterPanier(Panier panier) ;
	
	public void modifierPanier(Long idpanier, Double Total) ;
	
	public void supprimerPanier(Long idpanier) ;
	
	public void AjouterDansPanier(Prod_Panier produitP);
	
	//public void addProd_Panier(int quantite,Long idProduit,Long idPanier);
	
	public void modifierDansPanier(Prod_Panier produitP, int quantite);
	
	public void supprimerDuPanier(Prod_Panier produitP);
	   
	public List<Produit> getProduitsParPanier(Long idPanier);
	
	public List<Produit> getProduitsParAcheteur(Long idAcheteur);
	
	public List<Prod_Panier> loadProds_Panier(Panier panier);

	public Panier loadPanier(Long idPanier);
	
	public Panier loadPanierParAche(Long idAcheteur);

	void addProd_Panier(int quantite, Long idProduit, Long idPanier);

	Produit getProduitById(Long idProduit);

	Prod_Panier verifier(Panier PAN, Produit PD);

	Double calculerTotale(Long idPanier);
	
	

}
