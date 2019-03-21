package Exception;

public class AutoNotFoundException extends AutoException{

	private String msg; 
	
	public AutoNotFoundException()
	{
		super("Auto is not find"); 
		msg = "Auto is not find"; 
	}
	
	public AutoNotFoundException(String errormessage)
	{
		super(errormessage); 
		msg = errormessage; 
	}
	
	@Override
	public void fix() {
		
	}

}
