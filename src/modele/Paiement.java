package modele;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TPAIEMENT")
public class Paiement implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_PAIEMENT")
	private Long idPaiement;
	
	@Column(name="DATE_PAIEMENT")
	private Date datePaiement;
	
	
	/* @Facture
	 * 
	 * Facture facture;
	 */
	
	/*
	 * @CARTE_BANCAIRE
	 * 
	 * CarteBancaire carteBancaire;
	 */
	
	public Paiement() {/*DEFAULT CONSTRUCTOR*/}

	
	public Paiement(Date datePaiement)
	{
		this.datePaiement=datePaiement;
		
	}
	
	
	public Long getIdPaiement() {
		return idPaiement;
	}
	public void setIdPaiement(Long idPaiement) {
		this.idPaiement = idPaiement;
	}
	public Date getDatePaiement() {
		return datePaiement;
	}
	public void setDatePaiement(Date datePaiement) {
		this.datePaiement = datePaiement;
	}
	
	
	
}
