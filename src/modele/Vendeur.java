package modele;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Table(name = "T_VENDEUR")
public class Vendeur {

	@Id @GeneratedValue( strategy=GenerationType.IDENTITY )
	private Long idVendeur;
	
	private double chiffreAffaireVente;
	private int nombreVente;
	private String description;
	private int appreciation;
	private int typeVendeur;
	
	public Vendeur(Long idVendeur, double chiffreAffaireVente, int nombreVente, String description, int appreciation,
			int typeVendeur) {
		super();
		this.idVendeur = idVendeur;
		this.chiffreAffaireVente = chiffreAffaireVente;
		this.nombreVente = nombreVente;
		this.description = description;
		this.appreciation = appreciation;
		this.typeVendeur = typeVendeur;
	}

	public Vendeur() {
		super();
	}

	public Long getIdVendeur() {
		return idVendeur;
	}

	public void setIdVendeur(Long idVendeur) {
		this.idVendeur = idVendeur;
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
