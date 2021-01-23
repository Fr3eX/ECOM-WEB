package modele;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//@Entity
@Table(name = "T_PRODUITS")
public class Produit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Id_Produit")
	private Long idProduit ;
	
	@Column(name = "Designation")
	private String  designation;
	
	@Column(name="Quantite")
	private int quantite;
	
	@Column(name = "Prix")
	private Double prix;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "Promotion")
	private Double promotion;
	
	@Column(name = "DatePublication")
	private Date dateInsertion;
	
	@Column(name = "Appreciations_Positives")
	private int appreciationPos;
	
	@Column(name = "Appreciations_Negatives")
	private int appreciationNeg;
	
	@Column(name = "NombreAchat")
	private int nombreAchat;
	
	@ManyToOne
	@JoinColumn(name = "Id_Panier")
	private Panier panier;
	
	@ManyToOne
	@JoinColumn(name = "Categori_Id")
    private Categorie categorie;

	public Produit() {
		super();
	}

	public Long getIdProduit() {
		return idProduit;
	}

	public void setIdProduit(Long idProduit) {
		this.idProduit = idProduit;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPromotion() {
		return promotion;
	}

	public void setPromotion(Double promotion) {
		this.promotion = promotion;
	}

	public Date getDateInsertion() {
		return dateInsertion;
	}

	public void setDateInsertion(Date dateInsertion) {
		this.dateInsertion = dateInsertion;
	}

	public int getAppreciationPos() {
		return appreciationPos;
	}

	public void setAppreciationPos(int appreciationPos) {
		this.appreciationPos = appreciationPos;
	}

	public int getAppreciationNeg() {
		return appreciationNeg;
	}

	public void setAppreciationNeg(int appreciationNeg) {
		this.appreciationNeg = appreciationNeg;
	}

	public int getNombreAchat() {
		return nombreAchat;
	}

	public void setNombreAchat(int nombreAchat) {
		this.nombreAchat = nombreAchat;
	}

	public Panier getPanier() {
		return panier;
	}

	public void setPanier(Panier panier) {
		this.panier = panier;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	
}
