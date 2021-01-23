package modele;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table (name="TUser")
@Inheritance(strategy = InheritanceType.JOINED)
public class User {
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private long idUser;
	  private String nom;
	  private String prenom;
	  private String adresse;
	  private String userName;
	  private String password;
	  private String email;
	  private String telephone;
	  private Date dateNaissance;
	  private String pays;
	  private String ville;
	  private String typeUser;
	  private Date dateDerniereConnexion;
	  private Date dateCreation;
  
public User() {
	super();
	// TODO Auto-generated constructor stub
}

public User(long idUser, String nom, String prenom, String adresse, String userName, String password, String email,
		String telephone, Date dateNaissance, String pays, String ville, String typeUser, Date dateCreation) {
	super();
	this.idUser = idUser;
	this.nom = nom;
	this.prenom = prenom;
	this.adresse = adresse;
	this.userName = userName;
	this.password = password;
	this.email = email;
	this.telephone = telephone;
	this.dateNaissance = dateNaissance;
	this.pays = pays;
	this.ville = ville;
	this.typeUser = typeUser;
	this.dateCreation = dateCreation;
}

public long getIdUser() {
	return idUser;
}
public void setIdUser(long idUser) {
	this.idUser = idUser;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getPrenom() {
	return prenom;
}
public void setPrenom(String prenom) {
	this.prenom = prenom;
}
public String getAdresse() {
	return adresse;
}
public void setAdresse(String adresse) {
	this.adresse = adresse;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public Date getDateNaissance() {
	return dateNaissance;
}
public void setDateNaissance(Date dateNaissance) {
	this.dateNaissance = dateNaissance;
}
public String getPays() {
	return pays;
}
public void setPays(String pays) {
	this.pays = pays;
}
public String getVille() {
	return ville;
}
public void setVille(String ville) {
	this.ville = ville;
}
public String getTypeUser() {
	return typeUser;
}
public void setTypeUser(String typeUser) {
	this.typeUser = typeUser;
}
public Date getDateDerniereConnexion() {
	return dateDerniereConnexion;
}
public void setDateDerniereConnexion(Date dateDerniereConnexion) {
	this.dateDerniereConnexion = dateDerniereConnexion;
}
public Date getDateCreation() {
	return dateCreation;
}
public void setDateCreation(Date dateCreation) {
	this.dateCreation = dateCreation;
}

@Override
public String toString() {
	return "User [idUser=" + idUser + ", nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + ", userName="
			+ userName + ", password=" + password + ", email=" + email + ", telephone=" + telephone + ", dateNaissance="
			+ dateNaissance + ", pays=" + pays + ", ville=" + ville + ", typeUser=" + typeUser
			+ ", dateDerniereConnexion=" + dateDerniereConnexion + ", dateCreation=" + dateCreation + "]";
}
  
}
