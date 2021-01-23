package modele;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//@Entity @Table(name = "T_COMMANDE")
public class Commande {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id_Commande")
	
	private Long idCommande;
	private int quantiteCom;
	
	 @ManyToOne @JoinColumn(name="idFacture", nullable=false)
	private Facture factures;

	public Commande(Long idCommande, int quantiteCom, Facture factures) {
		super();
		this.idCommande = idCommande;
		this.quantiteCom = quantiteCom;
		this.factures = factures;
	}

	public Commande() {
		super();
	}

	public Long getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(Long idCommande) {
		this.idCommande = idCommande;
	}

	public int getQuantiteCom() {
		return quantiteCom;
	}

	public void setQuantiteCom(int quantiteCom) {
		this.quantiteCom = quantiteCom;
	}

	public Facture getFactures() {
		return factures;
	}

	public void setFactures(Facture factures) {
		this.factures = factures;
	}
	
	
}
