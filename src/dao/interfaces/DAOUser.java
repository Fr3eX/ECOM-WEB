package dao.interfaces;

import dao.exceptions.DAOException;
import modele.User;

public interface DAOUser {

	public void addUser(User user)throws DAOException;
	public void delUser(Long id)throws DAOException;
	public User loadUser(Long id)throws DAOException;
	public void updateUser(User user)throws DAOException;
	
	public Boolean isEmailExist(String mail);
	
}
