package metier.exceptions;

public class FormVException extends RuntimeException {

	/**
	 * 	Exception personalisé.
	 */
	private static final long serialVersionUID = 1L;
	
	public FormVException(String message)
	{
		super(message);
	
	}
	
	public FormVException(String message,Throwable cause)
	{
		super(message,cause);
	}
	public FormVException(Throwable cause)
	{
		super(cause);
	}
	
	
}
