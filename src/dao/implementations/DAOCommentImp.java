package dao.implementations;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import dao.exceptions.DAOConfigurationException;
import dao.exceptions.DAOException;
import dao.interfaces.DAOComment;
import modele.Commentaire;


public class DAOCommentImp implements DAOComment {

	private EntityManager manager;
	
	public  DAOCommentImp(EntityManagerFactory factory) {
		
		if(factory == null)
			throw new DAOConfigurationException("FACOTRY CANNOT BE NULL");
		else
			this.manager=factory.createEntityManager();
	
	}

	@Override
	public void addComment(Commentaire comment) throws DAOException {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.persist(comment);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Add Comment" + e);
		}
		
	}

	@Override
	public void delUser(Long id) throws DAOException {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			Commentaire tmp=this.manager.find(Commentaire.class, id);
			this.manager.remove(tmp);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot del Comment" + e);
		}
	}

	@Override
	public Commentaire loadComment(Long id) throws DAOException {
		// TODO Auto-generated method stub
		Commentaire comment=null;
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			comment=this.manager.find(Commentaire.class, id);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot Load Comment " + e);
		}
		
		return comment;
	}

	@Override
	public void updateComment(Commentaire comment) throws DAOException {
		
		EntityTransaction tr=this.manager.getTransaction();
		tr.begin();
		try
		{
			this.manager.merge(comment);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			throw new DAOException("Cannot update comment",e);
		}
		
	}
	
	
	public void close()
	{
		this.manager.flush();
		this.manager.close();
	}

}
