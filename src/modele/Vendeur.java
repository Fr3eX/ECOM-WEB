package modele;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity 
@Table(name = "T_VENDEUR")
@PrimaryKeyJoinColumn(name = "idUser")
public class Vendeur extends User{

	private double chiffreAffaireVente;
	private int nombreVente;
	private String description;
	private int appreciation;
	private int typeVendeur;
	@OneToMany(mappedBy = "vendeur")
	private List<Produit> produits;
	
	public Vendeur(Long idVendeur, double chiffreAffaireVente, int nombreVente, String description, int appreciation,
			int typeVendeur) {
		super();
		this.chiffreAffaireVente = chiffreAffaireVente;
		this.nombreVente = nombreVente;
		this.description = description;
		this.appreciation = appreciation;
		this.typeVendeur = typeVendeur;
	}

	public Vendeur(long idUser, String nom, String prenom, String adresse, String userName, String password,
			String email, String telephone, Date dateNaissance, String pays, String ville, String typeUser,
			Date dateCreation) {
		super(idUser, nom, prenom, adresse, userName, password, email, telephone, dateNaissance, pays, ville, typeUser,
				dateCreation);
		// TODO Auto-generated constructor stub
	}

	public Vendeur() {
		super();
	}


	public double getChiffreAffaireVente() {
		return chiffreAffaireVente;
	}

	public void setChiffreAffaireVente(double chiffreAffaireVente) {
		this.chiffreAffaireVente = chiffreAffaireVente;
	}

	public int getNombreVente() {
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

	public int getAppreciation() {
		return appreciation;
	}

	public void setAppreciation(int appreciation) {
		this.appreciation = appreciation;
	}

	public int getTypeVendeur() {
		return typeVendeur;
	}

	public void setTypeVendeur(int typeVendeur) {
		this.typeVendeur = typeVendeur;
	}
	
	
}
