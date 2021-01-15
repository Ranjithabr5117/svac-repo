
package com.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.activation.CommandMap;
import javax.activation.MailcapCommandMap;
import javax.crypto.SecretKey;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;
import com.DAOFactory.CommonDAO;


import com.util.*;
public class DistributeKey extends HttpServlet
{
	// Send Mail Paarameters Starts 
	//private static String toEmailId="testmycvsprojects@gmail.com";
	private static String toEmailId="";
	private static String toMobileNo="";
	private static  String subject="";
	private static  String message="";
	private static  String attachedFilePath="";
	private static  String fromEmailId="virajaprs@gmail.com";
	private static  String password="vprs12345678";
	private static  String hostname="smtp.gmail.com";
	private static  String portnumber="465";
	// Send Mail Paarameters Ends
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		HttpSession session = req.getSession(true);
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		int no=0,maxUserId = 0,no1Value=0;
		int deptCode1 = 0,deptCode2 = 0;
		int designCode1 = 0,designCode2 = 0;
		int userId = 0;
		String userEmail = "";
		boolean flag = false;
		RequestDispatcher rd = null;
		
		ResultSet rs = null;
		String secreteKeyInfo = "";
		AdminDAO adminDAO = AdminDAO.getInstance();
		String privateKeyFilePath = req.getRealPath("")+"\\Files\\Keys\\Key.txt";
		String srcFilePath = "";
		String destFilePath ="";
		
		try
		{
			no = Utility.parse(req.getParameter("user_id"));
			if(no == 0)
			{
				maxUserId = adminDAO.getMaxUserID();
				no1Value=1;
			}
			else
			{
				maxUserId = no;
				no1Value=2;
			}
			
			rs = adminDAO.getSpecificUserDetails(maxUserId);
			while(rs.next())
			{
				userId = rs.getInt(1);
				deptCode1 = rs.getInt(5);
				deptCode2 = rs.getInt(6);
				designCode1 = rs.getInt(7);
				designCode2 = rs.getInt(8);
				userEmail = rs.getString(13);
				toMobileNo=rs.getString(11);
			}
			
		
			String name1=	(String) session.getAttribute("username");
			String key1=CommonDAO.getkey1(name1);
			System.out.println(""+key1);
        	String key2=CommonDAO.getkey2(name1);
        	System.out.println(""+key2);
			
			secreteKeyInfo = key1+"-"+key2+"-"+userId+"-"+deptCode1+"-"+deptCode2+"-"+designCode1+"-"+designCode2;
			
			System.out.println("Secrete Key Info : " + secreteKeyInfo);
			flag=true;
			if(flag)
			{
					 try 
					 {
						 
							 destFilePath = req.getRealPath("")+"\\Files\\Keys1\\Key.txt";
							 File f = new File(destFilePath);
							 if(f.exists())
					    	 {
					    		f.delete();
					    	 }
							 if(!f.exists())
					    	 {
					    		f.createNewFile();
					    	 }
							 
						
									
									DesEncryptionForString encrypter = new DesEncryptionForString("333kkk45");
									
									
									String encrypted = encrypter.encrypt(secreteKeyInfo);
									
									System.out.println("++++ENCRYPTED++++++"+encrypted);
									
									  FileWriter writer = new FileWriter(destFilePath, true);
							            writer.write(encrypted);
							          
							            writer.close();
									
									

					Thread.sleep(5000);
						
							subject = "Find Your Key Info";
							message="<html> <br> <b> <h3>Hello!<br>Please,Find The Attached File.<br>This File is having your File Acess Controle Info.</h3> </b> </html>";
							attachedFilePath = destFilePath;
							System.out.println("*********************************************");
							System.out.println("Attached File Path : " + attachedFilePath);
							System.out.println("*********************************************");
							
							toEmailId = userEmail;
							
							MailcapCommandMap mc = (MailcapCommandMap) CommandMap.getDefaultCommandMap(); 
							mc.addMailcap("text/html;; x-java-content-handler=com.sun.mail.handlers.text_html"); 
							mc.addMailcap("text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml"); 
							mc.addMailcap("text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain"); 
							mc.addMailcap("multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed"); 
							mc.addMailcap("message/rfc822;; x-java-content- handler=com.sun.mail.handlers.message_rfc822"); 
                           flag = CL_SendMail.sendPersonalizedMail(toEmailId, fromEmailId,password,subject,message,attachedFilePath,hostname,portnumber);
							boolean flagno=SendMSG.sendSMS(toMobileNo,"Dear User Private Key is sent to Your Email");
							if(flag)
							{
								System.out.println("Mail Sent To : " + toEmailId);
								rs = adminDAO.getUsers();
								req.setAttribute("rs", rs);
								//rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=1&no1=1");
								rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=1&no1="+no1Value);
								rd.forward(req,resp);
							}
							else
							{
								rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=2&no1=2");
								rd.forward(req, resp);
								System.out.println("Sorry,Something went wrong Try It Again.....");
							}
						
					 } catch (Exception e) 
					 {
						System.out.println("Opps,Mail Sending Process Failed....");
						e.printStackTrace();
					 }
			}
			else
			{
				rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=2&no1=2");
				rd.forward(req, resp);
				System.out.println("Opps,Something went wrong Try It Again.....");
			}
			
		} catch (Exception e) 
		{
			System.out.println("Opps,Exception in DistributeKey Servlet : ");
			e.printStackTrace();
		}
	
	}
}
