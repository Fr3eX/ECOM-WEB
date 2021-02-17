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
@Table(name = "T_FACTURES")
public class Facture {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idFacture")
	private Long idFacture;
	
	@ManyToOne
	@JoinColumn(name = "ID_ACHETEUR")
	private Acheteur acheteur;
	
	@Column(name = "DateFacturation")
	private Date dateFacturation;
	
	@Column(name = "IdCard")
	private String idCard;
	
	@Column(name = "Total")
	private float total;
	
	
	
	@OneToMany( targetEntity=Commande.class, mappedBy="facture" )
    private List<Commande> commands = new ArrayList<>();

	public List<Commande> getCommands() {
		return commands;
	}

	public void setCommands(List<Commande> commands) {
		this.commands = commands;
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

	public Acheteur getAcheteur() {
		return acheteur;
	}

	public void setAcheteur(Acheteur acheteur) {
		this.acheteur = acheteur;
	}

	public Date getDateFacturation() {
		return dateFacturation;
	}

	public void setDateFacturation(Date dateFacturation) {
		this.dateFacturation = dateFacturation;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}
	
	
	
}
