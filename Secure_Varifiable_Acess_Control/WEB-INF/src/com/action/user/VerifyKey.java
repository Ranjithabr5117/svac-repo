
package com.action.user;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;
import com.DAO.UserDAO;

import com.action.admin.DesEncryptionForString;
import com.util.Utility;

public class VerifyKey extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		ResultSet rs = null;
		String srcFilePath = "",destFilePath="";
		int fileId=0;
		int userId=0,deptCode1=0,deptCode2=0,designCode1=0;
		String designCode2="";
		String keyInfo = "";
		String username = "";
		StringBuffer sb=new StringBuffer();
		  int deptId = 0;
		  int designationId = 0;
		  String transactionStatus = "";
		  int ownerid=0;
		
		AdminDAO adminDAO = AdminDAO.getInstance();
		UserDAO userDAO = UserDAO.getInstance();
		
		HttpSession session = request.getSession();  
	    username = (String) session.getAttribute("username");
	    
	    
	String path=    (String) session.getAttribute("filepathh");
	
	System.out.println("fiel path si >>>>>>>>>>>>>>>>>>>>>>>>>"+path);
	  String key1="";
	  String key2="";
		userId = userDAO.getID(username);
		deptId = userDAO.getDepartmentID(username);
		System.out.println("................."+deptId);
    	designationId = userDAO.getDesignationID(username);
    	System.out.println("................."+designationId);
		boolean flag = false,flag1 = false;
		
		try 
		{
			fileId = Integer.parseInt(request.getParameter("fileid").toString());
			//srcFilePath = request.getRealPath("") +"\\Files\\ReadKey\\Key.txt";
        	
			
			
			DesEncryptionForString encrypter = new DesEncryptionForString("333kkk45");
			
			
			 FileReader reader = new FileReader(path);
	            BufferedReader bufferedReader = new BufferedReader(reader);
	 
	            String line;
	 
	            while ((line = bufferedReader.readLine()) != null) {
	                System.out.println(line);
	                System.out.println("++++ENCRYPTED++++++"+line);
	    			String decrypted = encrypter.decrypt(line);
	    			
	    			System.out.println("++++DECRYPTED++++++"+decrypted);
	    			sb.append(decrypted);
	            }
	            reader.close();
			
        	  
		 
        	System.out.println("string buffer content is >>>>>>>>>>>>>>>>>>>>>"+sb.toString());  
      
			String[] info = sb.toString().trim().split("-");
 		    
 		    
		    	key1 = info[0];
		    	key2 = info[1];
		    	ownerid = Integer.parseInt(info[2]);
		    	deptCode1 = Integer.parseInt(info[3]);
		    	deptCode2 = Integer.parseInt(info[4]);
		    	designCode1 = Integer.parseInt(info[5]);
		   designCode2 = info[6];
		 
		    
	        //secreteKeyInfo = userId+"-"+deptCode+"-"+designCode;
		    
		  
		    
		    System.out.println("******* Veryfication Info **************");
		    System.out.println("      key1: " + key1);
		    System.out.println("      key2: " + key2);
		    System.out.println("      ownerid: " + ownerid);
		    session.setAttribute("owner", ownerid);
		    session.setAttribute("key1", key1);
		    
		    session.setAttribute("key2", key2);
		    System.out.println("       Dept Id1 : " + deptCode1);
		    System.out.println("       Dept Id2 : " + deptCode2);
		    System.out.println("Designation Id1 : " + designCode1);
		    System.out.println("Designation Id2 : " + designCode2);
		    System.out.println("File Id : " + fileId);
		    System.out.println("idd is >>******>"+Integer.parseInt(info[6].trim()));
	int idd=Integer.parseInt(info[6].trim());
	System.out.println("idd is >>>>>>>>>>>>>>>>>>>>>>"+idd);
	  flag = adminDAO.downloadAuthentication1(fileId, deptCode1, designCode1);
		    flag1 = adminDAO.downloadAuthentication1(fileId, deptCode2, idd);
		    
		  if(flag || flag1)
		    {
		    	  response.sendRedirect(request.getContextPath()+"/Download?fileid="+fileId+"");
		    }
		    else
		    {
		    	rs = adminDAO.getUploadFiles();
		    	
	
            	
            	transactionStatus = "Denied";
            	userDAO.addDownloadTransaction(Utility.getDate(),Utility.getTime(),userId,fileId,deptId,designationId, transactionStatus);
        	
              
				
				if(rs != null)
				{
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Resources/JSP/User/download_file.jsp?no=0&no1=1");
					rd.forward(request,response);
				}
		    }
		  
	       
		}
		catch (Exception e) 
		{
			System.out.println("Opps,Exception In VerifyKey :");
			e.printStackTrace();
		}
		
	
		
	}
}
