package metier.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import dao.exceptions.DAOException;
import dao.interfaces.DAOUser;
import metier.exceptions.FormVException;
import modele.User;

public class SignInForm {
		
		private DAOUser dao_user;
	
		 private static final Integer MIN_PASSWORD_LENGTH=6;
		 private static final Integer MIN_EMAIL_LENGTH=6;
		 
		 
		 private static final String FIELD_EMAIL="mai";
		 private static final String FIELD_PASSWORD="pass";
		 
		 
	
		 private Map<String,String>errors=new HashMap<String,String>();
		 private String results;
		 
		 		
		 public SignInForm(DAOUser user)
		 {
			this.dao_user =user;
		 }
		 
		 
		 public User SignIn(HttpServletRequest request)
		 {
			 String email=this.getFieldValue(request, FIELD_EMAIL);
			 String password=this.getFieldValue(request, FIELD_PASSWORD);
			 
			 User user=new User();
			 
			 try {
				 this.processEmail(email, user);
				 this.processPassword(password, user);
				 
				 
				 if(this.errors.isEmpty())
				 {
					  	user=this.dao_user.loadUser(email);
					 
					    ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
						
					    /* PASSWORD ENCRYPTION*/
					    passwordEncryptor.setAlgorithm( "SHA-256" );
						passwordEncryptor.setPlainDigest( false );
						
						String cryptedPassword=passwordEncryptor.encryptPassword(password);
						
						if(!user.getPassword().equals(cryptedPassword))
						{
							this.results="Email ou mot de passe incorrecte";
						}
				 }
				 else
					 this.results="Échec de la connexion . ";
			
			 } 
			 catch (DAOException e) {
				e.printStackTrace();
				this.results="Erreur imprévu merci de réessayer plus tard .";
			}
			 
			 
			 
			 
			 return user;
		 }
		 
		
		 
		private void processEmail(String email,User user)
		{
			try {
				checkEmail(email);
			} catch (FormVException e) {
				this.setErrors(FIELD_EMAIL, e.getMessage());
			}
			
			user.setUserName(email);
		}
		 
		private void processPassword(String password,User user)
		{
			try {
					checkPassword(password);
			} catch (FormVException e) {
				this.setErrors(FIELD_PASSWORD, e.getMessage());
			}
			
			user.setPassword(password);
		}
		 
		
		
		private void checkEmail(String email)throws FormVException
		{
			if(email!=null)
			{
				if(	email.length() < MIN_EMAIL_LENGTH )
					throw new FormVException("Le nom d'utilisateur doit contenire  au moins "+ MIN_EMAIL_LENGTH +" caractères.");
			}
			else
				throw new FormVException("Veuillez saisre votre nom d'utilisateur.");
		}

		private void checkPassword(String password)throws FormVException
		{
			if(password != null)
			{
				if(	password.length() < MIN_PASSWORD_LENGTH )
					throw new FormVException("Le mot de passe doit contenire  au moins "+ MIN_PASSWORD_LENGTH +" caractères.");
			}
			else
				throw new FormVException("Veuillez saisre votre mot de passe .");
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


		private String getFieldValue(HttpServletRequest request,String field){
				String value=(String)request.getParameter(field);
			
				if(value==null  || value.trim().length()==0)
					return null;
				else
					return value.trim();
		}
		
		
		
		
}
