package modele;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Table(name = "T_COMMENTAIRE")
public class Commentaire {
	
	@Id @GeneratedValue( strategy=GenerationType.IDENTITY )
	private Long idCommentaire;
	
	private String Commentaire;
	private Date dateCommentaire;
	private String derniereModification;
	
	public Commentaire(Long idCommentaire, String commentaire, Date dateCommentaire, String derniereModification) {
		super();
		this.idCommentaire = idCommentaire;
		Commentaire = commentaire;
		this.dateCommentaire = dateCommentaire;
		this.derniereModification = derniereModification;
	}

	
	public Commentaire() {
		super();
	}


	public Long getIdCommentaire() {
		return idCommentaire;
	}

	public void setIdCommentaire(Long idCommentaire) {
		this.idCommentaire = idCommentaire;
	}

	public String getCommentaire() {
		return Commentaire;
	}

	public void setCommentaire(String commentaire) {
		Commentaire = commentaire;
	}

	public Date getDateCommentaire() {
		return dateCommentaire;
	}

	public void setDateCommentaire(Date dateCommentaire) {
		this.dateCommentaire = dateCommentaire;
	}

	public String getDerniereModification() {
		return derniereModification;
	}

	public void setDerniereModification(String derniereModification) {
		this.derniereModification = derniereModification;
	}
	
	

}
