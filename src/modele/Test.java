package modele;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



public class Test {

	public static void main(String[] args) {

		/*
		ProduitMetier pm =new ProduitMetier();
		List<Produit> produits = pm.getProduitsParPrixMinEtMax(10, 20);
		System.out.println(produits.size());
	    /*
		ProduitMetier pm =new ProduitMetier();
		Categorie cat = new Categorie();
		cat.setIdCategorie(1);
		cat.setNomCategorie("cat1");
		int i = pm.modifierProduit(new Long(4),new Long(2),"produit 4", 90, 10.0, "tres bon etat", 0.0, cat ,"blue",false);
		System.out.println(i);
	    /*
	    Admin admin = new Admin();
	    admin.setNom("aziz");
	    em.persist(admin);
	    transac.commit();*/
	    
		/*
	    em.close();    
	    emf.close(); */
		
		/*
		EntityManagerFactory mf = Persistence.createEntityManagerFactory("persistence.xml");
        SessionFactory sessionFactory;
		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
        Admin admin = new Admin();
		session.save(admin);
		session.getTransaction().commit();
		session.close();*/


		
	}

}
