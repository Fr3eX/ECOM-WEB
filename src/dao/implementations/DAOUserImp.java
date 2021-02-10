package dao.implementations;

import java.math.BigInteger;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;



import dao.exceptions.DAOConfigurationException;
import dao.exceptions.DAOException;
import dao.interfaces.DAOUser;
import modele.User;

public class DAOUserImp implements DAOUser{
	
	private final static String SQL_EMAIL_QUERY="SELECT idUser FROM TUser WHERE email like ?";
	private EntityManager manager;
	
	public  DAOUserImp(EntityManagerFactory factory) {
		if(factory == null)
			throw new DAOConfigurationException("EntityFactory manager cannot be NULL");
		else
			this.manager=factory.createEntityManager();
	}
	
	@Override
	public void addUser(User user) throws DAOException {

		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.persist(user);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Add User" + e);
		}
	}

	@Override
	public void delUser(Long id) throws DAOException {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			User tmp=this.manager.find(User.class, id);
			this.manager.remove(tmp);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot del User" + e);
		}
		
	}

	@Override
	public User loadUser(Long id) throws DAOException {
		// TODO Auto-generated method stub
		User user=null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			user=this.manager.find(User.class, id);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load User " + e);
		}
		
		return user;
	}

	@Override
	public User loadUser(String email) throws DAOException {
		// TODO Auto-generated method stub
		User user=null;
		BigInteger id;
		Query query;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try {
			query=this.manager.createNativeQuery(SQL_EMAIL_QUERY);
			query.setParameter(1, email);
			
			try
			{
				id=(BigInteger)query.getSingleResult();
				user=this.manager.find(User.class, id.longValue());
				tr.commit();
			}
			catch (Exception  e) {
				user=null;
			}

		} catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load User " + e);
		}
		
		
		return user;
	}
	
	@Override
	public void updateUser(User user) throws DAOException {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.persist(user);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot del User",e);
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public Boolean isEmailExist(String email) {
		// TODO Auto-generated method stub
		EntityTransaction tr=this.manager.getTransaction();
		Query query;
		tr.begin();
		try
		{
			query=this.manager.createNativeQuery(SQL_EMAIL_QUERY);
			query.setParameter(1, email);
			
			List<User> tmp=(List<User>)query.getResultList();
			
			if( !tmp.isEmpty())
			{	
				tr.commit();	
				return true;
			}
			else
			{
				tr.commit();
				return false;
			}

		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Execute SELECT Query" + e);
		}
	
	}


}
