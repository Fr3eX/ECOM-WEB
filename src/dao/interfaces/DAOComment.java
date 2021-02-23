package dao.interfaces;

import dao.exceptions.DAOException;
import modele.Commentaire;

public interface DAOComment {
	
		/*CRUD METHODS*/
	
	public void addComment(Commentaire comment)throws DAOException;
	public void delUser(Long id)throws DAOException;
	public Commentaire loadComment(Long id)throws DAOException;
	public void updateComment(Commentaire comment)throws DAOException;
}
