package metier.forms;

import java.util.HashMap;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.validator.routines.EmailValidator;
import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import dao.exceptions.DAOException;
import dao.interfaces.DAOUser;
import metier.exceptions.FormVException;
import modele.Acheteur;
import modele.User;

public class SignUpForm  {

	private DAOUser dao_user;
	
	private static final String DEFAULT_PROFILE_IMAGE_PATH="default.png";
	
	private static final Integer MIN_FNAME_LENGTH=4;
	private static final Integer MIN_LNAME_LENGTH=4;
	private static final Integer MIN_PASSWORD_LENGTH=6;
	
	private static final String FIELD_FNAME="firstName";
	private static final String FIELD_LNAME="lastName";
	private static final String FIELD_EMAIL="mail";
	private static final String FIELD_PASSWORD="pass";
	private static final String FIELD_CONFPASSWORD="confPass";
	
	
	private Map<String,String>errors=new HashMap<String,String>();
	private String results;
	
	public SignUpForm(DAOUser dao_user)
	{
		this.dao_user=dao_user;
	}

	public User signUp(HttpServletRequest request)
	{
		String fname = this.getFieldValue(request, FIELD_FNAME);
		String lname=this.getFieldValue(request, FIELD_LNAME);
		String email=this.getFieldValue(request, FIELD_EMAIL);
		String password=this.getFieldValue(request, FIELD_PASSWORD);
		String cpassword=this.getFieldValue(request, FIELD_CONFPASSWORD);
		
		/* Create account as buyer */
		
		User user=new Acheteur();
		
		try {
			
			this.processFName(fname, user);
			this.processLName(lname, user);
			this.processEmail(email, user);
			this.proccessPassword(password,cpassword, user);
			
			if(this.errors.isEmpty())
			{
				try
				{
					user.setImgPath(DEFAULT_PROFILE_IMAGE_PATH);
					this.dao_user.addUser(user);
				}catch (DAOException e) {
					this.setErrors(FIELD_EMAIL, "L'email que vous avez saisie existe déja .");
				}
			}
			else
				this.results="Échec de l'inscription";
			
			
		} catch (DAOException e) {
			this.results="Erreur imprévu merci de réessayer plus tard .";
		}
		
		user.setPassword(password);
		return user;
	}
	private void processLName(String lname,User user)
	{
		try
		{
			System.out.println("LName : " +lname);

			this.checkLName(lname);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_LNAME, e.getMessage());
		}
		user.setNom(lname);
	}
	
	private void processFName(String fname,User user)
	{
		try
		{
			System.out.println("FName : " +fname);
			this.checkFName(fname);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_FNAME, e.getMessage());
		}
		user.setPrenom(fname);
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
	
	private void proccessPassword(String password,String confPassword,User user)
	{
		String cryptedPassword=password;
		try
		{
			this.checkPassword(password);
			this.checkCPassword(confPassword, password);
		   
			ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
			
		    /* PASSWORD ENCRYPTION*/
		    passwordEncryptor.setAlgorithm( "SHA-256" );
			passwordEncryptor.setPlainDigest( false );
			
			cryptedPassword=passwordEncryptor.encryptPassword(password);
			
			
		}
		catch (FormVException e) {
			this.setErrors(FIELD_PASSWORD, e.getMessage());
		}
		
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
					throw new FormVException("L'email que vous avez saisie existe déja .");		
				
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
				throw new FormVException("Le mot de passe  doit contenir au moins "+MIN_PASSWORD_LENGTH+" caractères .");
		}
		else
			throw new FormVException("Veuillez saisire un mot de passe.");
	}
	
	private void checkCPassword(String confpassword,String password)throws FormVException
	{
		if(confpassword!=null)
		{
			if(!confpassword.equals(password))
				throw new FormVException("Les mots de passe ne correspondent pas .");
		}
		else
			throw new FormVException("Merci de confirmer votre mot de passe .");
	}
	
	private void checkFName(String fname)throws FormVException
	{
		if( fname != null )
		{
			if( fname.length() < MIN_FNAME_LENGTH )
				throw new FormVException("Le nom doit contenir au moins "+MIN_FNAME_LENGTH+" caractères .");
		}
		else
			throw new FormVException("Veuillez saisire votre nom.");
	}
	
	private void checkLName(String lname)throws FormVException
	{
		if( lname != null )
		{
			if( lname.length() < MIN_LNAME_LENGTH )
			{
				throw new FormVException("Le prenom doit contenir au moins "+MIN_LNAME_LENGTH+" caractères .");
			}
		}
		else
			throw new FormVException("Veuillez saisire votre prenom.");
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
