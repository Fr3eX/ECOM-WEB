package modele;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import modele.Commande;

@Entity
//@Table(name = "T_FACTURE")
public class Facture {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id_Facture")
	private Long idFacture;
	
	private Date dateFacture;
	
	private boolean etatFacture;
	
	// @OneToMany(targetEntity=Commande.class, mappedBy="Facture", cascade=CascadeType.ALL)
	@OneToMany(mappedBy = "factures")
	private List<Commande> commandes = new ArrayList<>();
	
	
	public Facture(Long idFacture, Date dateFacture, boolean etatFacture, List<Commande> commandes) {
		super();
		this.idFacture = idFacture;
		this.dateFacture = dateFacture;
		this.etatFacture = etatFacture;
		this.commandes = commandes;
	}
	
	public Facture() {
		super();
	}

	public Long getIdFacture() {
		return idFacture;
	}

	public void setIdFacture(Long idFacture) {
		this.idFacture = idFacture;
	}
	
	public Date getDateFacture() {
		return dateFacture;
	}

	public void setDateFacture(Date dateFacture) {
		this.dateFacture = dateFacture;
	}
	
	public boolean getEtatFacture() {
		return etatFacture;
	}

	public void setEtatFacture(boolean etatFacture) {
		this.etatFacture = etatFacture;
	}
	
	public void addCommande(Commande cmd){
		this.commandes.add(cmd);
		cmd.setFactures(this);
	}
	 
	
}
