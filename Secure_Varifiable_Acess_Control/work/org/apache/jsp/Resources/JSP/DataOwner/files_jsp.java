/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2020-08-04 13:17:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Resources.JSP.DataOwner;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.util.*;

public final class files_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");

	ResultSet rs=(ResultSet)Utility.parse2(request.getAttribute("rs"));
	String name=Utility.parse1(request.getParameter("name")); 
	
	System.out.print("name in jsp page"+name);
	int count=1;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".button {\r\n");
      out.write("    background-color: #FFFFFF; \r\n");
      out.write("    border: none;\r\n");
      out.write("    color: white;\r\n");
      out.write("    padding: 15px 32px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    margin: 4px 2px;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".button5 {background-color: #555555;} \r\n");
      out.write("</style>\r\n");
      out.write("<head>\r\n");
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/pagination.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer()\">\r\n");
      out.write("\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath() );
      out.write("/UploadFile\">\r\n");
      out.write("<button class=\"button button5\" type=\"submit\" name=\"submit\"   value=\"Upload\" id=\"a1\">Upload</button>&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("<input type=\"hidden\" name=\"name\" value=\"");
      out.print(name );
      out.write("\"/>\r\n");
      out.write("<button class=\"button button5\" type=\"submit\"   name=\"submit\"  value=\"Delete\"  id=\"a1\">Delete</button>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<table id=\"results\" class=\"tab\" style=\"top: 1000 ; right:100; width: 800 ; color: black\";>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">Select</font></th>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">FileId</font></th>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">UserId</font></th>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">File_Name</font></th>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">Date</font></th>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">Time</font></th>\r\n");
      out.write("\t\t<th><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">Day</font></th>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");

	if(rs!=null)
		while(rs.next())
		{
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(count++ );
      out.write("&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t<input name=\"chk\" type=\"checkbox\" value=\"");
      out.print(rs.getInt(1) );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t<td><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">");
      out.print(rs.getInt(1) );
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t<td><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">");
      out.print(rs.getInt(8) );
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t<td><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">");
      out.print(rs.getString(2) );
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t<td><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">");
      out.print(rs.getString(9) );
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t<td><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">");
      out.print(rs.getString(10) );
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t<td><font color=\"#ffffff\" style=\"font-style: bold\" size=\"4\">");
      out.print(rs.getString(11) );
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t");
}
	
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<div id=\"pageNavPosition\" style=\"cursor:hand;color: white\"></div>\r\n");
      out.write("<script type=\"text/javascript\"><!--\r\n");
      out.write("        var pager = new Pager('results', 5); \r\n");
      out.write("        pager.init(); \r\n");
      out.write("        pager.showPageNav('pager', 'pageNavPosition'); \r\n");
      out.write("        pager.showPage(1);\r\n");
      out.write("    //--></script>\r\n");

	if(Utility.parse(request.getParameter("no"))==2)
    {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("      <script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('File Uploaded Successfully.....!');\r\n");
      out.write("    \t\t\t</script>\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    ");
}
	if(Utility.parse(request.getParameter("no"))==1)
	{
      out.write("\r\n");
      out.write("\t\t<div class=\"tab1\" style=\"position:absolute;top:250px;left:410px\">\t\r\n");
      out.write("\t\t\t<form id=\"login\" action=\"");
      out.print(request.getContextPath() );
      out.write("/UploadToCloud?name=");
      out.print(name );
      out.write("\" enctype=\"multipart/form-data\" method=\"post\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<input type=\"file\" name=\"file\" class=\"field\" required=\"true\"></input><br></br>\r\n");
      out.write("\t\t\t\t<button class=\"button button5\" type=\"submit\" name=\"Upload File\" value=\"Upload\" id=\"a1\">Upload File</button>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\t\t\t\r\n");
      out.write("\t");
}
	if(Utility.parse(request.getParameter("no"))==3)
    {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("       <script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('Opps select atleast one to delete.....!');\r\n");
      out.write("    \t\t\t</script>\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    ");
}
	if(Utility.parse(request.getParameter("no"))==4)
    {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("          <script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('File Deleted Successfully.....!');\r\n");
      out.write("    \t\t\t</script>\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    \r\n");
      out.write("    ");
}
	
	if(Utility.parse(request.getParameter("no"))==5)
    {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("          <script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('Network problem.....!');\r\n");
      out.write("    \t\t\t</script>\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    ");
}
	
	if(Utility.parse(request.getParameter("no"))==6)
    {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("      <script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('Downloaded Successfully');\r\n");
      out.write("    \t\t\t</script>\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    ");
}
	if(Utility.parse(request.getParameter("no"))==7)
    {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('Some blocks of file are already exists in the cloud');\r\n");
      out.write("    \t\t\t</script>\t\r\n");
      out.write("    \t\t\r\n");
      out.write("    ");
}
	

      out.write("\t\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
