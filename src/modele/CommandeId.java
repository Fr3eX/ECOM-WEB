package modele;

import java.io.Serializable;

public class CommandeId implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Facture facture;
	private Produit product;
	public CommandeId() {
		super();
	}
	public CommandeId(Facture facture, Produit product) {
		super();
		this.facture = facture;
		this.product = product;
		
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((facture == null) ? 0 : facture.hashCode());
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CommandeId other = (CommandeId) obj;
		if (facture == null) {
			if (other.facture != null)
				return false;
		} else if (!facture.equals(other.facture))
			return false;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		return true;
	}



	
}
