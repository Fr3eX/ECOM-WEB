package modele;

import dao.interfaces.DAOCategorie;
import dao.implementations.DAOCategorieImp;

public abstract class Test {

	public static void main(String[] args) {
		
		DAOCategorieImp dao = new DAOCategorieImp() ;
		Categorie cat = new Categorie() ;
		cat.setNomCategorie("micro-ondes");
		dao.addCategorie(cat) ;
	}

}
