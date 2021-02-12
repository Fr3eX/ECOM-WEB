package dao.implementations;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dao.exceptions.DAOException;
import dao.interfaces.DAOCategorie;
import modele.Categorie;

public class DAOCategorieImp implements DAOCategorie {
	
	/* declaration de l'objet EntityManager qui permet de gerer les entites */
	private EntityManager entityManager ;
	
	/* Constructor */
	public DAOCategorieImp() {
		/* Creation de l'objet Entity Manager Factory */
		EntityManagerFactory entityManagerFactory =
				Persistence.createEntityManagerFactory("FIRST_UNIT") ;
		/* Creation de l'objet Entity Manager */
		entityManager = entityManagerFactory.createEntityManager();
	}
	
	
	@Override
	public void addCategorie(Categorie categorie) throws DAOException {
		EntityTransaction transaction = entityManager.getTransaction();
		/* Demarrer la transaction */
		transaction.begin();
		try {
		/* enregister le produit categorie dans la base de donnee */
		entityManager.persist(categorie);
		/* Validation de la transaction si tout se passe bien */
		
		transaction.commit();
		}catch(Exception e) {
			/* Annuler la transaction en cas d'exception */
			transaction.rollback();
			e.printStackTrace();
			System.out.println("il un probleme");
		}
	}

	@Override
	public void delCategorie(int id) throws DAOException {
		  Categorie cat = entityManager.find(Categorie.class, id) ;
		  entityManager.remove(cat) ;
		
	}

	@Override
	public Categorie loadCategorie(int id) throws DAOException {
		Categorie cat = entityManager.find(Categorie.class, id) ;
		return cat;
	}

	@Override
	public Categorie loadCategorie(String nomCategorie) throws DAOException {
		Categorie cat = entityManager.find(Categorie.class, nomCategorie) ;
		return cat;
	}

	@Override
	public void updateCategorier(Categorie categorie) throws DAOException {
		entityManager.merge(categorie) ;
	}

	@Override
	public Boolean isCategorieExist(String nomCategorie) {
		
		return null;
	}
	
}
