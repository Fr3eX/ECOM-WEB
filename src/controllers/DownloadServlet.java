package controllers;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * This servlet is for download requests.
 */

public class DownloadServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String PATH="path";
	public static final int BUFFER_LENGHT=10240;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedInputStream in=null;
		BufferedOutputStream out=null;
		File file=null;
		
		String pathDes=this.getServletConfig().getInitParameter(PATH);
		String filePath=request.getPathInfo();
		
		if(filePath==null || filePath.equals("/") )
		{
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}

		filePath=URLDecoder.decode(filePath,"UTF-8");
		try {
			 file=new File(pathDes,filePath);
		} catch (Exception e) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		
		if(!file.exists())
		{
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		String type=this.getServletContext().getMimeType(file.getName());
		
		if(type==null)
			type="application/octet-streamt";
		
		response.reset();
		response.setBufferSize(BUFFER_LENGHT);
		response.setContentType(type);
		response.setHeader("Content-Lenght", String.valueOf(file.length()));
		response.setHeader("Content-Disposition", "inline; filename=\""+file.getName()+"\"");

		try {
			in=new BufferedInputStream(new FileInputStream(file),BUFFER_LENGHT);
			out=new BufferedOutputStream(response.getOutputStream(),BUFFER_LENGHT);
			
			byte[] buff=new byte[BUFFER_LENGHT];
			int lenght=0;
			
			while((lenght=in.read(buff))>0)
				out.write(buff, 0, lenght);
			
		} 
		catch (Exception e) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
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
