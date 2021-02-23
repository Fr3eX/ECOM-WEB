package modele;

import java.util.Collection;
import java.util.Date;
import java.util.Iterator;

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
	
	@Column(name = "Quantite")
	private int quantite;
	
	@Column(name = "Totale")
	private Double totale;
	
	@Column(name = "Date_Creation_Panier")
	private Date datePanier;
	
	@OneToOne(targetEntity=Panier.class) 
	private Acheteur acheteur;
    
	@OneToMany(mappedBy = "panier")
	private Collection<Produit> produits;

	public Panier() {
		super();
	}

	public Long getIdPanier() {
		return idPanier;
	}

	public void setIdPanier(Long idPanier) {
		this.idPanier = idPanier;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public Double getTotale() {
		return totale;
	}

	public void setTotale(Double totale) {
		this.totale = totale;
	}

	public Date getDatePanier() {
		return datePanier;
	}

	public void setDatePanier(Date datePanier) {
		this.datePanier = datePanier;
	}

	public Collection<Produit> getProduits() {
		return produits;
	}

	public void setProduits(Collection<Produit> produits) {
		this.produits = produits;
	}
	public Acheteur getAcheteur() {
		return acheteur;
	}

	public void setAcheteur(Acheteur acheteur) {
		this.acheteur = acheteur;
	}

	public void addProduit(Produit p)
	{
		this.produits.add(p);
		p.setPanier(this);
		
	}
	public void removeProduit(Produit p)
	{
		this.produits.remove(p);
		p.setPanier(null);
	}
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
}
