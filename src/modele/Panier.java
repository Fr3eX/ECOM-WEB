package modele;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.*;

@Entity
@Table(name = "T_PANIER")
public class Panier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id_Panier")
	private Long idPanier;
	
	
	@Column(name = "Totale")
	private Double totale;
	

	 @OneToOne(mappedBy="panier") 
	private Acheteur acheteur;
    
	@OneToMany(targetEntity = Prod_Panier.class ,mappedBy = "panier")
	List<Prod_Panier> prodPaniers = new ArrayList<Prod_Panier>();
	public Panier() {
		super();
	}


	public Long getIdPanier() {
		return idPanier;
	}


	public void setIdPanier(Long idPanier) {
		this.idPanier = idPanier;
	}


	public Double getTotale() {
		return totale;
	}


	public void setTotale(Double totale) {
		this.totale = totale;
	}


	public Acheteur getAcheteur() {
		return acheteur;
	}


	public void setAcheteur(Acheteur acheteur) {
		this.acheteur = acheteur;
	}


	public List<Prod_Panier> getProdPaniers() {
		return prodPaniers;
	}


	public void setProdPaniers(List<Prod_Panier> prodPaniers) {
		this.prodPaniers = prodPaniers;
	}



/*
	public Double calculerTotale()
	{
		Double totale = (double) 0;
		Collection<Produit> col = this.getProduits();
		Iterator it = col.iterator();
		
		while(it.hasNext())
		{
			Produit p= (Produit) it.next();
			Double prixtotaleproduit = p.getPrix()*p.getQuantite();
			totale += prixtotaleproduit;
		}
		return totale;
	}


*/


}
