package metier.forms;

import java.util.HashMap;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.validator.routines.EmailValidator;
import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import dao.exceptions.DAOException;
import dao.interfaces.DAOUser;
import metier.exceptions.FormVException;
import modele.User;

public class SignUpForm  {

	private DAOUser dao_user;
	
	private static final Integer MIN_NAME_LENGTH=5;
	private static final Integer MIN_PASSWORD_LENGTH=6;
	
	private static final String FIELD_NAME="nom";
	private static final String FIELD_PASSWORD="pass";
	private static final String FIELD_EMAIL="mail";
	
	private Map<String,String>errors=new HashMap<String,String>();
	private String results;
	
	public SignUpForm(DAOUser user)
	{
		this.dao_user=user;
	}

	public User signUp(HttpServletRequest request)
	{
		String name = this.getFieldValue(request, FIELD_NAME);
		String email=this.getFieldValue(request, FIELD_EMAIL);
		String password=this.getFieldValue(request, FIELD_PASSWORD);
		
		User user=new User();
		
		try {
			this.processName(name, user);
			this.processEmail(email, user);
			this.proccessPassword(password, user);
			
			if(this.errors.isEmpty())
				this.dao_user.addUser(user);
			else
				this.results="Échec de l'inscription";
		} catch (DAOException e) {
			this.results="Erreur imprévu merci de réessayer plus tard .";
		}
		
		return user;
	}
	
	
	private void processName(String name,User user)
	{
		try
		{
			this.checkName(name);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_NAME, e.getMessage());
		}
		user.setNom(name);
	}
	
	private void processEmail(String email,User user)
	{
		try
		{
			this.checkEmail(email);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_EMAIL, e.getMessage());
		}
		user.setEmail(email);
	}
	
	private void proccessPassword(String password,User user)
	{
		try
		{
			this.checkPassword(password);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_PASSWORD, e.getMessage());
		}
		
	    ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
		
	    /* PASSWORD ENCRYPTION*/
	    passwordEncryptor.setAlgorithm( "SHA-256" );
		passwordEncryptor.setPlainDigest( false );
		
		String cryptedPassword=passwordEncryptor.encryptPassword(password);
		
		user.setPassword(cryptedPassword);
	}
	
	
	private void checkEmail(String email)throws FormVException
	{
		if(email != null)
		{
			boolean valid = EmailValidator.getInstance().isValid(email);
			if(valid)
			{
				/*
				 *  Check if the email exist in the persistence context 
				 */
				if(this.dao_user.isEmailExist(email))
					throw new FormVException("L'email que vous avez saisie il existe déja .");		
				
			}
			else
				throw new FormVException("Veuillez  saisire un email valid .");
		}
		else
			throw new FormVException("Veuillez saisire votre adresse mail");
	}
	
	private void checkPassword(String password)throws FormVException
	{
		if( password != null )
		{
			if( password.length() < MIN_PASSWORD_LENGTH )
				throw new FormVException("Le mot de passe  doit contenir au moins six caractères .");
		}
		else
			throw new FormVException("Veuillez saisire un mot de passe.");
	}
	
	
	private void checkName(String name)throws FormVException
	{
		if( name != null )
		{
			if( name.length() < MIN_NAME_LENGTH )
				throw new FormVException("Le nom doit contenir au moins cinq caractères .");
		}
		else
			throw new FormVException("Veuillez saisire votre nom.");
	}
	
	
	
	
	
	public void setResults(String results) {
		this.results = results;
	}
	
	public String getResults() {
		return results;
	}
	
	
	public Map<String, String> getErrors() {
		return errors;
	}


	
	
	private void setErrors(String filed, String message) {
		this.errors.put(filed, message);
	}


	private String getFieldValue(HttpServletRequest request,String field)
	{
		String value=(String)request.getParameter(field);
	
		if(value==null  || value.trim().length()==0)
			return null;
		else
			return value.trim();
	}
}
