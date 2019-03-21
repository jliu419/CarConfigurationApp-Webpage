package Exception;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public abstract class AutoException extends Exception {
	private String errormsg;
	
	public AutoException() {
		super();
		errormsg = "error"; 
	}
	
	public AutoException(String errormsg) {
		super();
		this.errormsg = errormsg;
	}
	
	/**********
	 * get the error message
	 * @return
	 */
	public String showErrorMsg() {
		return errormsg;
	}
	
	/********
	 * Edit the error message
	 * @param errormsg
	 */
	public void setErrormsg(String errormsg) {
		this.errormsg = errormsg;
	}
	
	/*********
	 * write to file using timestamp
	 * @param filename 
	 */
	public void Logging(String errorname)
	{
		String stuff; 
		try {
			FileWriter writer = new FileWriter(new File("Error Log.txt")); // need to create that log
			stuff = geterrortime() + " " + errorname; 
			writer.write(stuff);
		} 
		catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
	/******
	 * For getting the time this error occurs
	 * @return
	 */
	protected String geterrortime()
	{
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now); 
	}
	
	public abstract void fix(); 
}
