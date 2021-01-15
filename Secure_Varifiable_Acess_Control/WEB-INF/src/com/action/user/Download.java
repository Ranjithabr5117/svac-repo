
package com.action.user;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.PrivateKey;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;
import com.DAO.UserDAO;
import com.DAOFactory.CommonDAO;
import com.RNS.ConversionProcess;
import com.RNS.Decryption_RNS;
import com.util.RSA_File_EncryptionDecryption;
import com.util.SerializeToDatabase;
import com.util.Utility;


public class Download extends HttpServlet
{
	
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		
		boolean fresult=false;
		int  owner=0;
		  ResultSet rs = null; 
		  String username = "";
		  int userId = 0;
		  int deptId = 0;
		  int designationId = 0;
		  int cloudId = 0;
		  int fileid=0;
		  int totalNumberOfClouds = 0;
		  String fileName="";
		  String transactionStatus = "";
		  boolean	result=false;
		  String downloadDir = "";
		  String key1="";
		  String key2="";
		  UserDAO userDAO = UserDAO.getInstance();
		  AdminDAO adminDAO = AdminDAO.getInstance();
		  boolean result11=false;
		  RequestDispatcher rd=null;
		  
		  HttpSession session = req.getSession();  
		  username = (String) session.getAttribute("username");
		  userId = userDAO.getID(username);
		  deptId = userDAO.getDepartmentID(username);
      	  designationId = userDAO.getDesignationID(username);
		
		  fileid = Integer.parseInt(req.getParameter("fileid").toString());
          System.out.println("fileid is >>>>>>>>>>>>>>>>"+fileid);
		  totalNumberOfClouds = adminDAO.getTotalNumberOfClouds();
			
 owner = (int) session.getAttribute("owner");
		System.out.println("owner id is>>>>>>>>>>>>>>>>>>>>"+owner);
		key1 = (String) session.getAttribute("key1");
		System.out.println("key1 id is>>>>>>>>>>>>>>>>>>>>"+key1);
		key2 = (String) session.getAttribute("key2");
		System.out.println("key2 id is>>>>>>>>>>>>>>>>>>>>"+key2);
		  rs = adminDAO.getUploadFiles(fileid);
	     if(rs != null)
	     {
	    	try 
	    	{
	    		while(rs.next())
	    		{
	    			fileName = rs.getString(2);
	    			cloudId = rs.getInt(6);
	    		}
				
			} catch (Exception e) 
			{
				// TODO: handle exception
			}
	     }
		 
		 
	   
	       if ( session.getAttribute( "waitPage" ) == null ) 
	       {  
	    	   session.setAttribute( "waitPage", Boolean.TRUE );  
	    	   PrintWriter out = res.getWriter();  
	    	   out.println( "<html><head>" );  
	    	   out.println( "<title>Please Wait...</title>" );  
	       	   out.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
	    	   out.println( "</head><body bgcolor=''>" );  
	    	   out.println( "<br>" );
	    	   out.println( "<center>" );
	    	   out.print("<font color='red'>");
	    	   out.println( "Please Do not press Back or Refresh button.......<br>  " );
	    	   out.println("</font>");
	    	   out.print("<font color='green'>");
	    	   out.println( "Please,Wait..........<br>  " );
	    	   out.println( "Download Athentication In Process..." );
	    	   out.println( "<br>" );
	    	   out.println("</font>");
	    	   out.println( "<br>" );
	    	   out.print( "<img src='Resources/Images/status_processing.gif'></img><br><br>");
	    	   out.print("<font color='geen'>");
	    	   out.println( "Please Do not press Back or Refresh button.......<br>  " );
	    	   out.println( "<br>" );
	    	   out.println( "Downloading is in process..." );
	    	   out.println( "<br>" );
	    	   out.println( "The File is being decrypted...." );
	    	   out.println("</font>");
	    	   out.println( "<br>" );
	    	   out.println( "Please wait....</h1></center");  
	    	   out.close();  
	       }  
	       else 
	       { 
		    	session.removeAttribute( "waitPage" );  
		    	
				try
				{
					
		
				       String fname=CommonDAO.getFileName(String.valueOf(fileid));
				       System.out.println("filaemae si />>>>>>>"+fname);
						
											String hashblknos=CommonDAO.gethashblknos(fname,owner);
											System.out.println("Hash blocks id is"+hashblknos);
											
											String str = CommonDAO.gethashblknos(fname,owner);
											  String[] temp;
											 
											  /* delimiter */
											  String delimiter = "-";
											  /* given string will be split by the argument delimiter provided. */
											  temp = str.split(delimiter);
											  /* print substrings */
											  System.out.println("======== "+str);
											  String blockname="";
											  String dest1=req.getRealPath("") + "/MergedFile/"+fname; 
											  File f=new File(dest1);
											  f.delete();
											  String dest=req.getRealPath("") + "/MergedFile/"+fname;
											 // File fin = new File(Merged);
											  
											  System.out.println("-----Temp Size--"+temp.length);
											  List<File> list = new ArrayList<File>();
											  String path1=req.getRealPath("") + "/Download/";
											  for(int i =0; i < temp.length ; i++)
											  {
												    
											    System.out.println("--===-======-= "+temp[i]);
											 
											    blockname=CommonDAO.getblocks(temp[i]); 
												System.out.println("----BLOCKNAME-----"+blockname);
												list.add(new File(path1+blockname));
												String destFilePath=req.getRealPath("") + "/Download/";
												result=Utility.download(Utility.getPro("server"), Utility.getPro("user"), Utility.getPro("pass"),blockname,destFilePath);
											  }
											//------------------------------------------------------------------------------------------------------
												String FILE_NAME = "Buddy.flv";
												String FILE_NAME1 = fname;
												System.out.println("-------------------FNAME-------------------------"+fname);
												String FILE_NAME5=FILE_NAME1.replace(".", "_");
												int PART_SIZE = 1000;
												
												 String path=req.getRealPath("") + "/MergedFile/";
												 String Des=req.getRealPath("") + "/MergedFile/"+"dec_"+fname;
												// String path1=request.getRealPath("") + "/Download/";
												    String FILE_NAME2 =path+fname;
												    String FILE_NAME3 = FILE_NAME5;
												
													File ofile = new File(FILE_NAME2);
													System.out.println("ofile is)))))))))))))))))))))))"+ofile);
													
													FileOutputStream fos;
													FileInputStream fis;
													byte[] fileBytes;
													int bytesRead = 0;
													//List<File> list = new ArrayList<File>();
													
													
													
													/*for(int i1=0; i1<temp.length;i1++)
													{
													list.add(new File(path1+FILE_NAME3));
													System.out.println("file parts are>>>>>>>>>>>>>>>>>"+FILE_NAME3);
													
													}*/
													
													try 
													{
														
													    fos = new FileOutputStream(ofile,true);
													    
													    System.out.println("List contents are>>>>>>................."+list);
													    
													    for (File file : list)
													    {
													    	
													        fis = new FileInputStream(file);
													        
													        
													        
													        fileBytes = new byte[(int) file.length()];
													        
													       
													        
													        bytesRead = fis.read(fileBytes, 0,(int)  file.length());
													        
													        
													        System.out.println("file bytes are>>>>>>>>>>>>>>>>>>>>>>>> "+bytesRead);
													        
													        assert(bytesRead == fileBytes.length);
													        assert(bytesRead == (int) file.length());
													        fos.write(fileBytes);
													        fos.flush();
													        fileBytes = null;
													        fis.close();
													        fis = null;
													    }
													    
													    fos.close();
													    fos = null;
													    
														byte[] odata_by1 = ConversionProcess.toByteArray(new File(FILE_NAME2));
														
														 String encdata = new String(odata_by1);
													    
								                    	 System.out.println("deenc_Data data ---chitradurga key 1 is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+key1);
								                    	  System.out.println("deenc_Data data ---chitradurga key 1 is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+key2);
								                    	  System.out.println("deenc_Data data ---chitradurga despath is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+ Des);
								                   System.out.println("enc_Data data ---chitradurga is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+encdata);
														
														boolean flag1=Decryption_RNS.decryptMessage(encdata, key1, key2, Des);
														System.out.println("--------Successfully wrote in to the decrypted file------"+flag1);    
													    
													    
													    
													    
													    
													    
														File ofile1 = new File(Des);
													    
														res.sendRedirect(req.getContextPath()+"/DownloadToClient?Des="+Des+"") ;
														//rd.forward(req, res);
													    
													    
													   /* ServletContext context = getServletContext();
													    String mimeType = context.getMimeType(Des);
													    if (mimeType == null) 
													    {
													    	//session.setAttribute( "waitPage", Boolean.FALSE );  
													    // set to binary type if MIME mapping not found
													    mimeType = "application/octet-stream";
													    }
													    System.out.println("MIME type: " + mimeType);
													 //   session.setAttribute( "waitPage", Boolean.FALSE );  											
													    // modifies response
													    res.setContentType(mimeType);
													    res.setContentLength((int) ofile1.length());

													    System.out.println("=======lenghthhhhh========="+(int) ofile1.length());
													    FileInputStream inStream = new FileInputStream(ofile1);												
													    // forces download
													    String headerKey = "Content-Disposition";
													    String headerValue = String.format("attachment; filename=\"%s\"", ofile1.getName());
													    System.out.println("=======Fname========="+fname);
													    res.setHeader(headerKey, headerValue);
													    // obtains response's output stream
													    OutputStream outStream = res.getOutputStream();
													    												
													    byte[] buffer = new byte[100096];
													    int bytesRead1 = -1;
													    												
													    while ((bytesRead1 = inStream.read(buffer)) != -1) 
													    {
													    outStream.write(buffer, 0, bytesRead1);
													    }
													    inStream.close();
													    outStream.close();*/
													    
														result11=true;
														

											            if(result11)
														{
											            	
												            	
												            
											            	rs=CommonDAO.getFiles(CommonDAO.getUserID(username),"Upload");
															  Utility.writeOnFile(username+".txt", "User has downloaded file ("+fname+") on date "+Utility.getDate()+" and time "+Utility.getTime()+"", getServletContext().getRealPath("/"));
									
												            	transactionStatus = "Allowed";
												            	userDAO.addDownloadTransaction(Utility.getDate(),Utility.getTime(),userId,fileid,deptId,designationId, transactionStatus);
												            	
													        downloadDir="cloud1";
														
														}
														else
														{
															
														}
																
													    
													}
													catch (Exception exception)
													{
														exception.printStackTrace();
													}		
												
												
												
						                    
											  
					
					
					
					
					
					
					
					
					
					  
					  
	          }
					
					

							
				
				catch(Exception e)
				{
					System.out.println(e);
				}
				
				
				
				
				
	       }
	       
	       
	       
	       
	       
	       
	       
}	
}
