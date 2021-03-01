package config;


import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class ServletListener implements ServletContextListener {
	
	/*
	 * 
	 * 	Listener for init the factory and store the object on Application scope
	 * 
	 */
	private static final String UNIT_NAME="FIRST_UNIT";
	private static final String FACTORY_APPATTRIBUTE="FACTORY";
	

	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
	
		EntityManagerFactory factory=Persistence.createEntityManagerFactory(UNIT_NAME);
		
		ServletContext context=sce.getServletContext();
		
		context.setAttribute(FACTORY_APPATTRIBUTE, factory);
	
	}
	
}
