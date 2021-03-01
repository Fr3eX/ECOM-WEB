package modele;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity 
@Table(name = "T_VENDEUR")
@PrimaryKeyJoinColumn(name = "vendeur_id")
public class Vendeur extends User {

	private Double chiffreAffaireVente;
	private Integer nombreVente;
	private String description;
	private Integer appreciation;
	private Integer typeVendeur;
	
	@OneToMany(mappedBy = "vendeur")
	private Collection<Produit> produits;
	
	public Vendeur(Double chiffreAffaireVente, Integer nombreVente, String description, Integer appreciation,
			Integer typeVendeur) {
		super();
		this.chiffreAffaireVente = chiffreAffaireVente;
		this.nombreVente = nombreVente;
		this.description = description;
		this.appreciation = appreciation;
		this.typeVendeur = typeVendeur;
	}

	public Vendeur() {
		super();
	}

	public Double getChiffreAffaireVente() {
		return chiffreAffaireVente;
	}

	public void setChiffreAffaireVente(double chiffreAffaireVente) {
		this.chiffreAffaireVente = chiffreAffaireVente;
	}

	public Integer getNombreVente() {
		return nombreVente;
	}

	public void setNombreVente(int nombreVente) {
		this.nombreVente = nombreVente;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getAppreciation() {
		return appreciation;
	}

	public void setAppreciation(int appreciation) {
		this.appreciation = appreciation;
	}

	public Integer getTypeVendeur() {
		return typeVendeur;
	}

	public void setTypeVendeur(int typeVendeur) {
		this.typeVendeur = typeVendeur;
	}

	public Collection<Produit> getProduits() {
		return produits;
	}

	public void setChiffreAffaireVente(Double chiffreAffaireVente) {
		this.chiffreAffaireVente = chiffreAffaireVente;
	}

	public void setNombreVente(Integer nombreVente) {
		this.nombreVente = nombreVente;
	}

	public void setAppreciation(Integer appreciation) {
		this.appreciation = appreciation;
	}

	public void setTypeVendeur(Integer typeVendeur) {
		this.typeVendeur = typeVendeur;
	}

	public void setProduits(Collection<Produit> produits) {
		this.produits = produits;
	}
	
	
}
