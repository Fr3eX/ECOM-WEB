package dao.interfaces;

import java.util.List;

import dao.exceptions.DAOException;
import modele.Categorie;

public interface DAOCategorie {
	
	public void addCategorie(Categorie categorie) throws DAOException;
	public void delCategorie(int id) throws DAOException;
	public Categorie loadCategorie(int id) throws DAOException;
	public Categorie chercheCategorie(String nomCategorie) throws DAOException;
	public void updateCategorier(Categorie categorie) throws DAOException;
	public List<Categorie> listCategorie() ;
	public Boolean isCategorieExist(String nomCategorie);
	void addCategorie(String nomCategorie) throws DAOException;
}
