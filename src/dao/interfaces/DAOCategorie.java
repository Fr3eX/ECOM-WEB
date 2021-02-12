package dao.interfaces;

import dao.exceptions.DAOException;
import modele.Categorie;

public interface DAOCategorie {
	
	public void addCategorie(Categorie categorie) throws DAOException;
	public void delCategorie(int id) throws DAOException;
	public Categorie loadCategorie(int id) throws DAOException;
	public Categorie loadCategorie(String nomCategorie) throws DAOException;
	public void updateCategorier(Categorie categorie) throws DAOException;
	
	public Boolean isCategorieExist(String nomCategorie);

}
