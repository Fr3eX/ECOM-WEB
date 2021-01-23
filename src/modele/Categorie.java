package modele;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

//@Entity
@Table(name = "T_CATEGORIES")
public class Categorie {
	
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
	    private int idCategorie;
		
		@Column(name = "Nom_Categorie")
		private String nomCategorie;
		
		@OneToMany(mappedBy = "categorie")
		private Collection<Produit> produits;

		public Categorie() {
			super();
		}

		public int getIdCategorie() {
			return idCategorie;
		}

		public void setIdCategorie(int idCategorie) {
			this.idCategorie = idCategorie;
		}

		public String getNomCategorie() {
			return nomCategorie;
		}

		public void setNomCategorie(String nomCategorie) {
			this.nomCategorie = nomCategorie;
		}

		public Collection<Produit> getProduits() {
			return produits;
		}

		public void setProduits(Collection<Produit> produits) {
			this.produits = produits;
		}
		public void addProduit(Produit p)
		{
			this.produits.add(p);
			p.setCategorie(this);
		}

}
