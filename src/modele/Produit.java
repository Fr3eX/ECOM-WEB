package modele;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
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
	
	@Column(name = "DatePublication")
	private Date dateInsertion;

	@Column(name = "NombreAchat")
	private int nombreAchat;
	
	@ManyToOne
	@JoinColumn(name = "Categori_Id")
    private Categorie categorie;

	@ManyToOne
	@JoinColumn(name = "vendeur_Id")
    private Vendeur vendeur;
	
	private boolean newProduct;
	
	private String imagePath;
	
	@OneToMany(mappedBy="produit")
	private List<Commentaire> commentaires=new ArrayList<Commentaire>();
	
	@OneToMany( targetEntity=Commande.class, mappedBy="product" )
    private List<Commande> commands = new ArrayList<>();
	
	
	public List<Commande> getCommands() {
		return commands;
	}

	public void setCommands(List<Commande> commands) {
		this.commands = commands;
	}



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


	public Date getDateInsertion() {
		return dateInsertion;
	}

	public void setDateInsertion(Date dateInsertion) {
		this.dateInsertion = dateInsertion;
	}


	public int getNombreAchat() {
		return nombreAchat;
	}

	public void setNombreAchat(int nombreAchat) {
		this.nombreAchat = nombreAchat;
	}


	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}

	public Vendeur getVendeur() {
		return vendeur;
	}

	public void setVendeur(Vendeur vendeur) {
		this.vendeur = vendeur;
	}

	public boolean isNewProduct() {
		return newProduct;
	}

	public void setNewProduct(boolean newProduct) {
		this.newProduct = newProduct;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public List<Commentaire> getCommentaires() {
		return commentaires;
	}

	public void setCommentaires(List<Commentaire> commentaires) {
		this.commentaires = commentaires;
	}

	


	
	
}
