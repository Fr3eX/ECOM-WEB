package dao.implementations;

import java.util.List;

import dao.exceptions.DAOConfigurationException;
import dao.exceptions.DAOException;
import dao.interfaces.DAOFacture;

import javax.persistence.*;

import modele.*;

public class DAOFactureImp implements DAOFacture {

	private EntityManager manager;
	
	public  DAOFactureImp(EntityManagerFactory factory) {
		if(factory == null)
			throw new DAOConfigurationException("EntityFactory manager cannot be NULL");
		else
			this.manager=factory.createEntityManager();
	}
	
	public Acheteur loadClient(Long id) throws DAOException{
		Acheteur client = null;
		EntityTransaction tr = this.manager.getTransaction();
		tr.begin();
		try {
			client = this.manager.find(Acheteur.class, id);
			tr.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tr.rollback();
			throw new DAOException("Cannot load client" + e);
		}
		return client;
	}
	
	@Override
	public void addFacture(Facture facture) throws DAOException {
		// TODO Auto-generated method stub
		
		EntityTransaction tr = this.manager.getTransaction();
		tr.begin();
		try {
			this.manager.persist(facture);
			tr.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tr.rollback();
			throw new DAOException("Cannot Add Facture" + e);
		}
	}

	@Override
	public List<Produit> getProductsFromCart(Long idAcheteur) {
		// TODO Auto-generated method stub
		List<Produit> list = null;
		EntityTransaction tr = this.manager.getTransaction();
		Query query;
		
		Acheteur Ach= this.loadClient(idAcheteur);
		tr.begin();
		try {
			list = (List<Produit>)this.manager.createQuery("SELECT P FROM Panier WHERE P.acheteur=:Ach").getResultList();
			tr.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tr.rollback();
			throw new DAOException("Cannot load product from cart" + e);
		}
		
		return list;
	}

	@Override
	public void deleteProductFromCart(Long idPanier) {
		// TODO Auto-generated method stub
		EntityTransaction tr = this.manager.getTransaction();
		tr.begin();
		try {
			Panier product = this.manager.find(Panier.class, idPanier);
			if(product == null) {
				System.out.println("the product you want to delete from the cart returns null");
			}
			this.manager.remove(product);
			tr.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tr.rollback();
			throw new DAOException("Cannot remove the product from the cart" + e);
		}
		
	}


	/*public void updateProductQuantity(Long idPanier, int quantite) {
		// TODO Auto-generated method stub
		EntityTransaction tr = this.manager.getTransaction();
		tr.begin();
		try {
			Panier product = this.manager.find(Panier.class, idPanier);
			product.setQuantite(quantite);
			this.manager.merge(product); 
		} catch (Exception e) {
			// TODO: handle exception
			tr.rollback();
			throw new DAOException("Cannot update the product in cart" +e);
			
		}
	}
*/
	
	public void addCommande(Commande product) {
		// TODO Auto-generated method stub
		EntityTransaction tr = this.manager.getTransaction();
		tr.begin();
		try {
			this.manager.persist(product);
			tr.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tr.rollback();
			throw new DAOException("Cannot Add Commande" + e);
		}
		
		
	}


	
	
	
}
