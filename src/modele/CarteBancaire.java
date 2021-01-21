package modele;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TCARTE_BANCAIRE")
public class CarteBancaire implements Serializable{

	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_CARTE_BANCAIRE")
	private Long idCarteBancaire;
	
	@Column(name = "NUMERO_CARTE")
	private Long numeroCarte;
	
	@Column(name="CVC")
	private Integer cvc;
	
	@Column(name="TYPE_CARTE")
	private String typeCarte;

	
	public CarteBancaire() {/*DEFAULT CONSTRUCTOR*/}
	
	
	public CarteBancaire(Long numeroCarte,Integer cvc,String typeCarte)
	{
		this.numeroCarte=numeroCarte;
		this.cvc=cvc;
		this.typeCarte=typeCarte;
	}
	
	
	
	public Long getIdCarteBancaire() {
		return idCarteBancaire;
	}

	public void setIdCarteBancaire(Long idCarteBancaire) {
		this.idCarteBancaire = idCarteBancaire;
	}

	public Long getNumeroCarte() {
		return numeroCarte;
	}

	public void setNumeroCarte(Long numeroCarte) {
		this.numeroCarte = numeroCarte;
	}

	public Integer getCvc() {
		return cvc;
	}

	public void setCvc(Integer cvc) {
		this.cvc = cvc;
	}

	public String getTypeCarte() {
		return typeCarte;
	}

	public void setTypeCarte(String typeCarte) {
		this.typeCarte = typeCarte;
	}
	
	
}
