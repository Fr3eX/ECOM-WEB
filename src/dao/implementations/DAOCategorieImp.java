package dao.implementations;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

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
	public void addCategorie(String nomCategorie) throws DAOException {
		Categorie cherCat = chercheCategorie(nomCategorie) ;
		if(cherCat != null) {
			Categorie categorie = new Categorie();
		
			categorie.setNomCategorie(nomCategorie);
			
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
		}else {
			System.out.println("cette Categorie existe deja") ;
		}
		
	}
	
	
	
	@Override
	public void addCategorie(Categorie categorie) throws DAOException {
		Categorie cherCat = chercheCategorie(categorie.getNomCategorie()) ;
		if(cherCat != null) {			
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
		}else {
			System.out.println("cette Categorie existe deja") ;
		}
		
	}
	
	
	
	// remove categorie

	@Override
	public void delCategorie(int id) throws DAOException {
		  Categorie cat = entityManager.find(Categorie.class, id) ;
		  entityManager.getTransaction().begin();
		  entityManager.remove(cat);
		  entityManager.getTransaction().commit();
	}

	
	// load categorie by id 
	@Override
	public Categorie loadCategorie(int id) throws DAOException {
		Categorie cat = entityManager.find(Categorie.class, id) ;
		return cat;
	}

	
	// check existance of Categorie
	@Override
	public Categorie chercheCategorie(String nomCategorie) throws DAOException {
		List<Categorie> list = listCategorie() ;
		for (Categorie temp : list) {
            if(temp.getNomCategorie() == nomCategorie)
            	return temp ;
        }
		return null;
	}

	
	
	@Override
	public void updateCategorier(int idCategorie , String newNameCategorie) throws DAOException {
		Categorie cat = loadCategorie(idCategorie) ;
		cat.setNomCategorie(newNameCategorie);
		entityManager.getTransaction().begin();
		entityManager.merge(cat) ;
		entityManager.getTransaction().commit();
	}
	
	
	
	@Override
	public List<Categorie> listCategorie() {
		Query  query = entityManager.createQuery(" from Categorie") ;
		List<Categorie>	cate = query.getResultList() ;
		return cate ;
	}
	
	

	@Override
	public Boolean isCategorieExist(String nomCategorie) {
		
		return null;
	}
	
}
