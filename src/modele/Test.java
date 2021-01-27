package modele;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class Test {

	public static void main(String[] args) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIRST_UNIT");    
	    EntityManager em = emf.createEntityManager();    
	    EntityTransaction transac = em.getTransaction();
	    transac.begin();
	    Admin admin = new Admin();
	    admin.setNom("aziz");
	    em.persist(admin);
	    transac.commit();
	    
	    em.close();    
	    emf.close(); 
		
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
