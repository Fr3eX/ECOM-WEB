package dao.interfaces;

import java.util.List;
import modele.Produit;
import modele.Commande;
import modele.Facture;

public interface DAOFacture {

	public void addFacture(Facture facture);
	public List<Produit> getProductsFromCart(Long idAcheteur);
	public void deleteProductFromCart(Long idPanier);
	//public void updateProductQuantity(Long idPanier, int quantite);
	
	public void addCommande(Commande product);
	
}
