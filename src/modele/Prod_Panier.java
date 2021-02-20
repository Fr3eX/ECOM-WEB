package modele;

import java.util.Collection;
import java.util.Date;
import java.util.Iterator;

import javax.persistence.*;



@Entity
@Table(name = "T_PROD_PANIER")
public class Prod_Panier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	@Column(name = "ID_Prod_Panier")
	private Long ide;
	
	@Column(name = "Quantite")
	private int quantite;
	
	@Column(name = "PRIX")
	private Double prix;
	
	@ManyToOne
	@JoinColumn(name="idProduit")
	private Produit produits;
	
	@ManyToOne
	@JoinColumn(name="idPanier")
	private Panier panier;
	
	public Prod_Panier() {
		super();
	}
	

	public Long getIde() {
		return ide;
	}
	public void setIde(Long ide) {
		this.ide = ide;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public Double getPrix() {
		return prix;
	}
	public void setPrix(Double prix) {
		this.prix = prix;
	}
	public Produit getProduits() {
		return produits;
	}
	public void setProduits(Produit produits) {
		this.produits = produits;
	}


	public Panier getPanier() {
		return panier;
	}


	public void setPanier(Panier panier) {
		this.panier = panier;
	}
	
	

}
