
package com.action.admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AdminDAO;
import com.RNS.Key_generation_rns;
import com.util.RSA_File_EncryptionDecryption;

public class GenerateKey extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		try {
		String keys="";
		boolean flag = false;
		RequestDispatcher rd = null;
		ResultSet rs=null;
		System.out.println("path :"+req.getContextPath());
		
	
		
		
		AdminDAO adminDAO = AdminDAO.getInstance();
		rs = adminDAO.getid();
		
		while(rs.next())
		{
			
			
			flag = Key_generation_rns.Generation(rs.getInt(1));
			System.out.println("flag >>>>>>>>"+flag);
			
		}
		
		if(flag)
		{
			
			
			rd = req.getRequestDispatcher("/Resources/JSP/Admin/generate_key.jsp?no=1");
			rd.forward(req,resp);	
			
			
		}
		
		else
		{
			
			
			rd = req.getRequestDispatcher("/Resources/JSP/Admin/generate_key.jsp?no=2");
			rd.forward(req,resp);
			
			
		}
		
	
	
	
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
		
		
	}
}
