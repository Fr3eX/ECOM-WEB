package modele;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity 
@Table(name = "T_COMMENTAIRE")
public class Commentaire {
	
	
	@Id
	@Column(name = "ID_COMMENT")
	@GeneratedValue( strategy=GenerationType.IDENTITY )
	private Long idCommentaire;
	
	@Column(name = "COMMENT_TEXT")
	private String commentaire;
	
	@Column(name="DATE_COMMENT")
	private Date dateCommentaire;
	
	
	
	@OneToOne
	@JoinColumn(name = "ID_USER", referencedColumnName = "idUser")
	User user;
	
	@OneToOne
	@JoinColumn(name = "ID_PRODUCT", referencedColumnName = "Id_Produit")
	Produit produit;
	
	@Column(name = "LAST_DATE_COMMENT_EDIT")
	private Date derniereModification;
	
	

	public Commentaire() {
		super();
	}
	
	public Commentaire(String commentaire, Date dateCommentaire, Date derniereModification) {
		super();
		
		this.commentaire = commentaire;
		this.dateCommentaire = dateCommentaire;
		this.derniereModification = derniereModification;
	}

	public Long getIdCommentaire() {
		return idCommentaire;
	}

	public void setIdCommentaire(Long idCommentaire) {
		this.idCommentaire = idCommentaire;
	}

	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public Date getDateCommentaire() {
		return dateCommentaire;
	}

	public void setDateCommentaire(Date dateCommentaire) {
		this.dateCommentaire = dateCommentaire;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}

	public Date getDerniereModification() {
		return derniereModification;
	}

	public void setDerniereModification(Date derniereModification) {
		this.derniereModification = derniereModification;
	}

	
	
	
	
	


	

}
