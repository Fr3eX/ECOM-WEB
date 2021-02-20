package modele;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="T_COMMANDES")
public class Commande implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Id_Commande")
	private Long idCommande ;
	
	@ManyToOne
	@JoinColumn(name = "idFacture")
	private Facture facture;
	
	
	@ManyToOne
	@JoinColumn(name = "idProduit") 
	private Produit product;
	
	@Column(name="Quantity")
	private int quantity;

	public Commande() {
		super();
	}

	public Facture getFacture() {
		return facture;
	}

	public void setFacture(Facture facture) {
		this.facture = facture;
	}

	public Produit getProduct() {
		return product;
	}

	public void setProduct(Produit product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
	
}
