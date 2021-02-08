package modele;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "T_ACHETEUR")
public class Acheteur extends User{

	@Column(name = "Chiffre_Affaire_Acheteur")
	private Double chiffreAffaireAchat ;
	
	@Column(name = "Nombre_Achat_Acheteur")
	private int nombreAchat;
	
	@Column(name = "Type_Acheteur")
	private int typeAcheteur;
    
	@OneToOne(targetEntity=Acheteur.class,cascade=CascadeType.ALL)  
	private Panier panier;
	
	public Acheteur() {
		super();
	}

	public Double getChiffreAffaireAchat() {
		return chiffreAffaireAchat;
	}

	public void setChiffreAffaireAchat(Double chiffreAffaireAchat) {
		this.chiffreAffaireAchat = chiffreAffaireAchat;
	}

	public int getNombreAchat() {
		return nombreAchat;
	}

	public void setNombreAchat(int nombreAchat) {
		this.nombreAchat = nombreAchat;
	}

	public int getTypeAcheteur() {
		return typeAcheteur;
	}
	public void setTypeAcheteur(int typeAcheteur) {
		this.typeAcheteur = typeAcheteur;
	}

	public Panier getPanier() {
		return panier;
	}

	public void setPanier(Panier panier) {
		this.panier = panier;
	}
	public void addPanier(Panier p)
	{
		this.setPanier(p);
		p.setAcheteur(this);
	}
}
