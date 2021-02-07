package config;


import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class FactoryInitializer implements ServletContextListener {
	
	/*
	 * 
	 * 	Listener for init the factory and store the object on Application scope
	 * 
	 */
	
	private static final String UNIT_NAME="FIRST_UNIT";
	private static final String ATT_FACTORY="FACTORY";
	
	private EntityManagerFactory factory;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
	
		this.factory=Persistence.createEntityManagerFactory(UNIT_NAME);
		
		ServletContext context=sce.getServletContext();
		
		context.setAttribute(ATT_FACTORY, this.factory);
		
		
	
	}
	
}
