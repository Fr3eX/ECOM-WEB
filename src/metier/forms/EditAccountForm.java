package metier.forms;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.joda.time.DateTime;

import dao.exceptions.DAOException;
import dao.interfaces.DAOUser;
import eu.medsea.mimeutil.MimeUtil;
import metier.exceptions.FormVException;
import modele.User;

public class EditAccountForm {
	
	
	
	private static Integer BUFFER_LENGHT=10000;
	private static final Integer MAX_ADDRESS_LENGTH=255;
	private static final Integer MIN_ADDRESS_LENGTH=10;
	private static final Integer MIN_FNAME_LENGTH=4;
	private static final Integer MIN_LNAME_LENGTH=4;
	
	private static final String USER_S_SCOPE_ATTRIBUTE="USER";
	private static final String PART_HEADER="content-disposition";
	private static final String FIELD_PHONE="telephone";
	private static final String FIELD_ADDRESS="address";
	private static final String FIELD_FNAME="fname";
	private static final String FIELD_LNAME="lname";
	private static final String FIELD_IMAGE="photo";
	private DAOUser dao_user;
	
	private Map<String,String>errors=new HashMap<String,String>();
	private String results;
	
	
	public EditAccountForm(DAOUser dao)
	{
		this.dao_user=dao;	
	}
	
	public User editProfile(HttpServletRequest request,String path)
	{
		String fname=this.getFieldValue(request, FIELD_FNAME);
		String lname=this.getFieldValue(request, FIELD_LNAME);
		String address=this.getFieldValue(request, FIELD_ADDRESS);
		String phone = this.getFieldValue(request, FIELD_PHONE);
		
		String old_fname;
		String old_lname;
		String old_address;
		String old_phone;
		String old_imgPath;
		
		String filename=null;
		InputStream input=null;
		
		try {
			Part filePart=request.getPart(FIELD_IMAGE);
			filename=this.getFileName(filePart.getHeader(PART_HEADER).split(";"));
		
			if(filename !=null && !filename.isEmpty())
			{
				filename=filename.substring(filename.lastIndexOf('/')+1).substring(filename.lastIndexOf('\\')+1);
				input=filePart.getInputStream();
			}
			
		} 
		catch (IllegalStateException e) {
			e.printStackTrace();
			this.setErrors(FIELD_IMAGE, "L'image est trop volumineuses .La taille maximum d'une image supporté est 1Mo .");
		}catch (IOException e1) {
			e1.printStackTrace();
			this.setErrors(FIELD_IMAGE, "Erreur de configuration du serveur .");
		} catch (ServletException e1) {
			e1.printStackTrace();
			this.setErrors(FIELD_IMAGE, "Ce type de requête n'est pas supporté, veuillez utiliser le formulaire prévu pour envoyer vos données");
		}
		
		HttpSession session=request.getSession();
		User user_tmp=new User();
		User user=(User)session.getAttribute(USER_S_SCOPE_ATTRIBUTE);
		
		/*In case if an error occurs*/
		old_address=user.getAdresse();
		old_phone=user.getTelephone();
		old_fname=user.getNom();
		old_lname=user.getPrenom();
		old_imgPath=user.getImgPath();
		
		
		try {
			
			this.processFName(fname, user_tmp);
			this.processLName(lname, user_tmp);
			this.processAddress(address, user_tmp);
			this.processPhone(phone, user_tmp);
			if(input != null)
			{
				this.processImage(input);
				DateTime date=new DateTime();
				filename=""+user.getIdUser()+date.getYear()+date.getMonthOfYear()+date.getDayOfWeek()+date.getHourOfDay()+date.getMinuteOfDay()+date.getSecondOfDay();
				System.out.println(filename);
				user_tmp.setImgPath(filename);
				this.writeFile(path, filename, input);
				
				if(this.errors.isEmpty())
				{
					user.setNom((user_tmp.getNom()!=null)?user_tmp.getNom():user.getNom());
					user.setPrenom((user_tmp.getPrenom()!=null)?user_tmp.getPrenom():user.getPrenom());
					user.setTelephone((user_tmp.getTelephone()!=null)?user_tmp.getTelephone():user.getTelephone());
					user.setAdresse((user_tmp.getAdresse()!=null)?user_tmp.getAdresse():user.getAdresse());
					user.setImgPath((user_tmp.getImgPath()!=null)?user_tmp.getImgPath():user.getImgPath());
					
					this.dao_user.updateUser(user);
					
				}

			}
			else
			{
				user.setNom((user_tmp.getNom()!=null)?user_tmp.getNom():user.getNom());
				user.setPrenom((user_tmp.getPrenom()!=null)?user_tmp.getPrenom():user.getPrenom());
				user.setTelephone((user_tmp.getTelephone()!=null)?user_tmp.getTelephone():user.getTelephone());
				user.setAdresse((user_tmp.getAdresse()!=null)?user_tmp.getAdresse():user.getAdresse());
				
				this.dao_user.updateUser(user);
			}
			
		} catch (DAOException e) {
			this.results="Erreur imprévu merci de réessayer plus tard .";
			System.out.print(e.getMessage());
			user.setNom(old_fname);
			user.setPrenom(old_lname);
			user.setTelephone(old_phone);
			user.setAdresse(old_address);
			user.setImgPath(old_imgPath);
		}
		
		
		return user_tmp;
	}
	
	private void processLName(String lname,User user)
	{
		try
		{
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
			this.checkFName(fname);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_FNAME, e.getMessage());
		}
		user.setPrenom(fname);
	}
	
	private void processImage(InputStream input)
	{
		try
		{
			this.checkImage(input);
			
		}catch (FormVException e) {
			this.setErrors(FIELD_IMAGE, e.getMessage());
		}
	}
	
	private void processPhone(String phone,User user)
	{
		try
		{
			this.checkPhone(phone);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_PHONE, e.getMessage());
		}
		
		user.setTelephone(phone);
	}
	
	private void processAddress(String address,User user)
	{
		try
		{
			this.checkAddress(address);
		}
		catch (FormVException e) {
			this.setErrors(FIELD_ADDRESS, e.getMessage());
		}
		user.setAdresse(address);
	}
	
	private void checkPhone(String phone)throws FormVException
	{
		if(phone!=null)
		{
			for(int i=0;i<phone.length();++i)
				if(!Character.isDigit(phone.charAt(i)))
					throw new FormVException("Le numéro de telehpone n'est pas valide.");
		}
	
		
	}
	
	private void checkImage(InputStream input)throws FormVException
	{
		MimeUtil.registerMimeDetector("eu.medsea.mimeutil.detector.MagicMimeMimeDetector");
		Collection<?> mimTypes = MimeUtil.getMimeTypes(input);
		
	
		if(input!=null)
			if(!mimTypes.toString().startsWith("image"))
				throw new FormVException("Le fichier que vous avez envoyer n'est pas une image .");

	}
	
	
	private void checkAddress(String address)throws FormVException
	{
		if( address != null )
		{
			if( address.length() < MIN_ADDRESS_LENGTH )
				throw new FormVException("Le message doit contenir au moins "+MIN_ADDRESS_LENGTH+" caractères .");
			if(address.length() > MAX_ADDRESS_LENGTH)
				throw new FormVException("Le message ne doit pas dépasser "+MAX_ADDRESS_LENGTH+" caractères");
		}
		
	}
	
	private void checkFName(String fname)throws FormVException
	{
		if( fname != null )
		{
			if( fname.length() < MIN_FNAME_LENGTH )
				throw new FormVException("Le nom doit contenir au moins "+MIN_FNAME_LENGTH+" caractères .");
		}
		
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
	
	private String getFileName(String[] contentDisp)
	{
		for(String contentDispHeader:contentDisp)
			if(contentDispHeader.trim().startsWith("filename"))
				return contentDispHeader.substring(contentDispHeader.lastIndexOf("=")+1).replace("\"", "");
		
		return null;
	}
	
	/*	Writing file on hard disk */
	public void writeFile(String path,String filename,InputStream input) 
	{
		BufferedInputStream in=null;
		BufferedOutputStream out=null;
		
		try {
			in=new BufferedInputStream(input,BUFFER_LENGHT);
			try {
				out=new BufferedOutputStream(new FileOutputStream(new File(path+filename)),BUFFER_LENGHT);
			} catch (FileNotFoundException e) {
			
				e.printStackTrace();
				this.setErrors(FIELD_IMAGE, "Erreur lors de l'écriture du fichier merci de réssayer une autre fois .");
			}
			
			byte buff[]=new byte[BUFFER_LENGHT];
			int lenght=0;
			
			try {
				while((lenght=in.read(buff))>0)
					out.write(buff, 0, lenght);
			} catch (IOException e) {
				
				e.printStackTrace();
				this.setErrors(FIELD_IMAGE, "Erreur lors de l'écriture du fichier merci de réssayer une autre fois .");
			}
		} 
		finally {
			
			try {
				in.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
			try {
				out.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}
}
