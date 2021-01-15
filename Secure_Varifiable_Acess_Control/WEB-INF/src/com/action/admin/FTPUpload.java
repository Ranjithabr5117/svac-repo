/**
 * 
 */
package com.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.PublicKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;
import com.DAO.UserDAO;
import com.drw.util.RSA_Algorithm;
import com.sun.org.apache.xml.internal.serializer.SerializerTrace;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;
import com.util.*;


/**
 * @author Munna Kumar Singh
 *Dec 6, 2011 4:28:43 PM
 *Project:-DNA
 *File:-FTPUpload.java
 */
public class FTPUpload extends HttpServlet
{
	private static String username="";
	private static int userid=0;
	private static String selectedFileType="";
	private static String dirToUploadFile="";
	private static String CLOUD1="ftp://ftp.drivehq.com/cloud1";
	private static String CLOUD2="ftp://ftp.drivehq.com/cloud2";
	private static String CLOUD3="ftp://ftp.drivehq.com/cloud3";
	private static String CLOUD4="ftp://ftp.drivehq.com/cloud4";
	private static String cloud1Status="";
	private static String cloud2Status="";
	private static String cloud3Status="";
	private static String cloud4Status="";
	
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		   RequestDispatcher rd = null;
		   String uploadSubject = "";
		   int cloudId =0,ownerId=0;
		   int totalNumberOfClouds = 0;
		   
		   String srcFilePath = "";
		   String destFilePath = "";
		   
		   
		   UserDAO userDAO = UserDAO.getInstance();
		   AdminDAO adminDAO = AdminDAO.getInstance();
		   
		   HttpSession session = req.getSession();  
		   
		   if(session != null)
			{
			  username = (String) session.getAttribute("username");
			  uploadSubject = session.getAttribute("subject").toString();
			}
		   
		   
	       if ( session.getAttribute( "waitPage" ) == null ) 
	       {  
	    	   session.setAttribute( "waitPage", Boolean.TRUE );  
	    	   PrintWriter out = res.getWriter();  
	    	   out.println( "<html><head>" );  
	    	   out.println( "<title>Please Wait...</title>" );  
	       	   out.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
	    	   out.println( "</head><body bgcolor=''>" );  
	    	   out.println( "<br><br><br>" );
	    	   out.print( "<center><img src='Resources/Images/status_processing.gif'></img><br><br>");
	    	   out.println( "Please Do not press Back or Refresh button.......<br>  " );
	    	   out.println("<font color='white' size='5'>");
	    	   out.println( "File Uploading is in Process......  " );
	    	   out.println("</font><br>");
	    	   out.println( "Please wait....</h1></center");  
	    	   out.close();  
	       }  
	       else 
	       { 
	    	    session.removeAttribute( "waitPage" );  
				try
				{
					PrintWriter out=res.getWriter();
					res.setContentType("text/html");
					
					String path=req.getParameter("path");
					System.out.println("Source ::> "+path);
					String filename=req.getParameter("fname");
					System.out.println("File Name ::> "+filename);
					
					String localFilePath = req.getRealPath("") +"\\Files\\Upload\\"+filename;
				    
					
					/* Uploading File On Cloud (Starts)*/
					
					String ftpserver = "ftp.drivehq.com";
			        String ftpusername = "blrstore";
			        String ftppassword = "*India123";
			        
			        //Uploading Encrypted File To Cloud 
			        File file1=new File(localFilePath);
			        totalNumberOfClouds = adminDAO.getTotalNumberOfClouds();
			        
			        /* Getting Random Number Between 1 to n (Starts) */
			        	int START = 1;
			        	int END = totalNumberOfClouds;
			        	ArrayList list = GenerateRandomNubberBetween1ton.gererateRandomNumberBetween1_to_n(START, END);
			        	System.out.println("**************** Random Number Info ****************");
			        	System.out.println(list);
			        	System.out.println("**************** Random Number Info ****************");
			        /* Getting Random Number Between 1 to n (Ends) */
			        	
			        cloudId = Integer.parseInt(list.get(totalNumberOfClouds-1).toString());
			        StringBuffer sb = new StringBuffer("File Uploaded On : ");
			        
			        for(int i=1;i<=totalNumberOfClouds;i++)
			        {
			        	if(cloudId == i)
				        {
				        	dirToUploadFile = "cloud"+i;
	        				sb.append(dirToUploadFile);
				        }
			        }
			        
			        /* Encrypting the file (Starts) */
			        	srcFilePath = localFilePath;
			        	destFilePath = req.getRealPath("") +"\\Files\\Upload\\enc_"+filename;
			        	PublicKey pubKey = (PublicKey) SerializeToDatabase.getPublicKey();
			        	RSA_File_EncryptionDecryption.encryptFile(srcFilePath, destFilePath,pubKey);
			        /* Encrypting the file (Ends) */
			       
			        File file=new File(destFilePath);
			        
    				FileUpload.upload(ftpserver,ftpusername,ftppassword,filename,file,dirToUploadFile);
    				
    				
	        	
					/* Uploading File On Cloud (Ends)*/
	        		String s= sb.toString();
	        		String a[] =s.split(":");
	        		String uploadedClouds = a[1];
	        		String clouds[] = uploadedClouds.split(",");
	        		
	        		System.out.println("7777777777777777777777777777777");
	        		System.out.println("Uploaded Clouds :");
	        		System.out.println(Arrays.toString(clouds));
	        		
	        		String url="ftp://ftp.drivehq.com/";
	        		
					
					/* Adding the upload Transaction details (Start)*/
					
					boolean flag = false;
					int dotPos = filename.lastIndexOf(".");
				    String extension = filename.substring(dotPos);
				    String fileType=extension;
					
					Calendar currentDate = Calendar.getInstance();
					SimpleDateFormat formatter=new SimpleDateFormat("dd-MM-yyyy");
					SimpleDateFormat formatter1=new SimpleDateFormat("HH:mm:ss");
					String date = formatter.format(currentDate.getTime());
					String time = formatter1.format(currentDate.getTime());
					
					date = date + "  " + time;
					ownerId = adminDAO.getDataOwnerId(username);
					
					flag = adminDAO.addUploadTransaction(filename,fileType,date,uploadSubject,cloudId,ownerId);
					
					flag = true;
					
					/* Adding the upload Transaction details (End)*/
					
					/* Displaying Success Message  */
					if(flag)
					{
						//rd=req.getRequestDispatcher("/Resources/JSP/User/uploadSupport_file.jsp?no=2&file_name="+filename+"");
						rd=req.getRequestDispatcher("/Resources/JSP/Admin/select_file.jsp?no=1&file_name="+filename+"&cloud="+sb.toString()+"");
						rd.forward(req,res);
					}
					else
					{
						//rd=req.getRequestDispatcher("/Resources/JSP/User/uploadSupport_file.jsp?no=3");
						rd=req.getRequestDispatcher("/Resources/JSP/Admin/select_file.jsp?no=0&no1=1");
						rd.forward(req,res);
					}
					
				}
				catch(Exception e)
				{
					System.out.println("\n ******** Exception In FTPUpload Servlet : \n");
					e.printStackTrace();
				}
		
	}}
}
