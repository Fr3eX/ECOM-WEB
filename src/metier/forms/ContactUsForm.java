package metier.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.validator.routines.EmailValidator;
import metier.exceptions.FormVException;


public class ContactUsForm {
	
	private static final Integer MIN_NAME_LENGTH=4;
	private static final Integer MAX_TEXT_LENGTH=255;
	private static final Integer MIN_TEXT_LENGTH=10;
	
	private static final String FIELD_NAME="nom";
	private static final String FIELD_TEXT="text";
	private static final String FIELD_EMAIL="email";
;
	
	private Map<String,String>errors=new HashMap<String,String>();
	private String results;
	
	public void formProcess(HttpServletRequest request)
	{
		String email=this.getFieldValue(request, FIELD_EMAIL);
		String name=this.getFieldValue(request, FIELD_NAME);
		String text=this.getFieldValue(request, FIELD_TEXT);
		
			this.processEmail(email);
			this.processName(name);
			this.processText(text);
		
	}
	
	private void processText(String text)
	{
		try
		{
			this.checkText(text);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_TEXT, e.getMessage());
		}
		
	}
	
	
	
	private void processName(String name)
	{
		try
		{
			this.checkName(name);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_NAME, e.getMessage());
		}
		
	}
	
	private void processEmail(String email)
	{
		try
		{
			this.checkEmail(email);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_EMAIL, e.getMessage());
		}

	}
	
	private void checkText (String text)throws FormVException
	{
		if( text != null )
		{
			if( text.length() < MIN_TEXT_LENGTH )
				throw new FormVException("Le message doit contenir au moins "+MIN_TEXT_LENGTH+" caractères .");
			if(text.length() > MAX_TEXT_LENGTH)
				throw new FormVException("Le message ne doit pas dépasser "+MAX_TEXT_LENGTH+" caractères");
		}
		else
			throw new FormVException("Le message ne peut pas être vide .");
	}
	
	
	private void checkName(String fname)throws FormVException
	{
		if( fname != null )
		{
			if( fname.length() < MIN_NAME_LENGTH )
				throw new FormVException("Le nom doit contenir au moins "+MIN_NAME_LENGTH+" caractères .");
		}
		else
			throw new FormVException("Veuillez saisire votre nom.");
	}
	
	
	private void checkEmail(String email)throws FormVException
	{
		if(email != null)
		{
			boolean valid = EmailValidator.getInstance().isValid(email);
			if(!valid)
				throw new FormVException("Veuillez  saisire un email valid .");
		}
		else
			throw new FormVException("Veuillez saisire votre adresse mail");
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