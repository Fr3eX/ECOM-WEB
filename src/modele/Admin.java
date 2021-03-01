package modele;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "TAdmin")
@PrimaryKeyJoinColumn(name = "idUser")
public class Admin extends User {
 private Date dateDerniereAction;
 
public Admin() {
	super();
	// TODO Auto-generated constructor stub
}

public Admin(String nom, String prenom, String adresse, String userName, String password, String email,
		String telephone, Date dateNaissance, String pays, String ville, String typeUser, Date dateCreation) {
	super(nom, prenom, adresse, userName, password, email, telephone, dateNaissance, pays, ville, typeUser,
			dateCreation);
	// TODO Auto-generated constructor stub
}


public Admin(long idUser, String nom, String prenom, String adresse, String userName, String password, String email,
		String telephone, Date dateNaissance, String pays, String ville, String typeUser, Date dateCreation, String role,
		Date dateDerniereAction) {
	super(nom, prenom, adresse, userName, password, email, telephone, dateNaissance, pays, ville, typeUser,dateCreation);
	this.dateDerniereAction = dateDerniereAction;
}

public Date getDateDerniereAction() {
	return dateDerniereAction;
}
public void setDateDerniereAction(Date dateDerniereAction) {
	this.dateDerniereAction = dateDerniereAction;
}


}
