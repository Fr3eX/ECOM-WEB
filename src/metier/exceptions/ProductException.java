package metier.exceptions;

public class ProductException extends RuntimeException {
	/**
	 * 	Exception personalisé.
	 */
	private static final long serialVersionUID = 1L;
	
	public ProductException(String message)
	{
		super(message);
	
	}
	
	public ProductException(String message,Throwable cause)
	{
		super(message,cause);
	}
	public ProductException(Throwable cause)
	{
		super(cause);
	}
}
