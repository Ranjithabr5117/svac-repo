/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2020-08-04 13:15:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Resources.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.Utility;
import java.sql.ResultSet;
import com.DAO.AdminDAO;
import com.DAO.UserDAO;

public final class download_005ffile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/pagination.js\"></script>\t\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer()\">\r\n");
      out.write("\r\n");

    int no=Utility.parse(request.getParameter("no"));
    
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0,cloudId=0,userid;
	String fileName="",fileTypes="",username="",date = "";
	UserDAO userDAO = UserDAO.getInstance();
	username = session.getAttribute("username").toString();
	if(no==0)
	{

      out.write("\t\r\n");
      out.write("\r\n");
      out.write("<div id=\"a3\" align=\"right\" style=\"position:absolute;top:30px;left:10px;width: 650px;height: 300px;\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("<p>\r\n");
      out.write("\r\n");
      out.write("\t<table id=\"results\" class=\"tab\" border=\"1\" cellpadding=\"5px\" cellspacing=\"4px\" width=\"650px\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<td colspan=\"6\" align=\"center\">\r\n");
      out.write("\t\t\t<font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"5\">Available Files To Download</font>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<th><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">FileId</font></th>\r\n");
      out.write("\t\t\t<th><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">File Name</font></th>\r\n");
      out.write("\t\t\t<th><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">Upload Date</font></th>\r\n");
      out.write("\t\t\t<th><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">Download</font></th>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\r\n");
 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			fileName=rs.getString(2);
			fileTypes=rs.getString(3);
			date=rs.getString(4);
			cloudId = rs.getInt(6);

      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">");
      out.print(id);
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t<td><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">");
      out.print(fileName);
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t<td><font color=\"#FFFFFF\" style=\"font-style: bold\" size=\"4\">");
      out.print(date);
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t<td><a href=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/JSP/User/select_file.jsp?fileId=");
      out.print(id);
      out.write("\">Download</a></td>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</tr>\r\n");

		}
    
}

      out.write("\r\n");
      out.write("  \t </table>\r\n");
      out.write("  \t </p>\r\n");
      out.write("   </div>\r\n");
      out.write(" </form>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("<div id=\"pageNavPosition\" style=\"position:relative;top:360px;left:75px;cursor:hand; color: white\"></div>\r\n");
      out.write("<script type=\"text/javascript\"><!--\r\n");
      out.write("        var pager = new Pager('results',6); \r\n");
      out.write("        pager.init(); \r\n");
      out.write("        pager.showPageNav('pager', 'pageNavPosition'); \r\n");
      out.write("        pager.showPage(1);\r\n");
      out.write("    //--></script>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
 	
if(Utility.parse(request.getParameter("no1"))==1)
{
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("    \t\t\talert('Sorry,Download Authentication Failed.');\r\n");
      out.write("    \t\t\t</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

}
	
}
	if(Utility.parse(request.getParameter("no"))==1)
	{
		
     String file_name = request.getParameter("fname");	
     String downloadedFrom = request.getParameter("dfrom");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"a2\" style=\"position:absolute;top:40px;left:25\" class=\"c\">\r\n");
      out.write("\t<table id=\"login\" align=\"center\">\r\n");
      out.write("\t    \r\n");
      out.write("\t    <h1 align=\"center\"><font color=\"white\" style=\"font-style: bold\" size=\"5\">File Download Acknowledgement</font></h1>\r\n");
      out.write("\t    \r\n");
      out.write("\t\t<hr size=\"10\" color=\"#5E74D8\"></hr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr  bgcolor=\"#A9D2FB\" align=\"center\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <td colspan=\"3\" align=\"center\"><pre><font color=\"white\" style=\"font-style: bold\" size=\"5\">Your File has been Downloaded Successfully......</font></pre></td>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <tr  bgcolor=\"#A9D2FB\" align=\"center\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <td><pre><font color=\"white\" style=\"font-style: bold\" size=\"4\">File Name</font></pre></td>\r\n");
      out.write("\t\t    <td>:</td>\r\n");
      out.write("\t\t    <td><font color=\"white\" style=\"font-style: bold\" size=\"4\">");
      out.print( file_name );
      out.write("</font></td>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t    <tr  bgcolor=\"#A9D2FB\" align=\"center\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <td><pre><font color=\"white\" style=\"font-style: bold\" size=\"4\">File Downloaded From </font></pre></td>\r\n");
      out.write("\t\t    <td>:</td>\r\n");
      out.write("\t\t    <td><font color=\"white\" style=\"font-style: bold\" size=\"4\">");
      out.print( downloadedFrom );
      out.write("</font></td>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t    \r\n");
      out.write("\t     <tr  bgcolor=\"#A9D2FB\" align=\"center\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <td><pre><font color=\"white\">Date </font></pre></td>\r\n");
      out.write("\t\t    <td>:</td>\r\n");
      out.write("\t\t    <td>");
      out.print( Utility.getDate());
      out.write(" &nbsp;&nbsp;");
      out.print( Utility.getTime());
      out.write("</td>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t    \r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");

} 
  if(Utility.parse(request.getParameter("no"))==3)
	{
    

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"a2\" style=\"position:absolute;top:40px;left:50\" class=\"c\">\r\n");
      out.write("\t<table id=\"login\" align=\"center\">\r\n");
      out.write("\t    \r\n");
      out.write("\t    <h1 align=\"center\"><font color=\"green\" style=\"font-style: bold\" size=\"5\">File Download Acknowledgement</font></h1>\r\n");
      out.write("\t    \r\n");
      out.write("\t\t<hr size=\"10\" color=\"#5E74D8\"></hr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr  bgcolor=\"#A9D2FB\" align=\"center\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <td colspan=\"3\" align=\"center\"><pre><font color=\"red\">Sorry Download Process Failed.</font></pre></td>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <tr  bgcolor=\"#A9D2FB\" align=\"center\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <td colspan=\"3\" align=\"center\"><pre><font color=\"red\">Something Went Wrong,Try IT Again....</font></pre></td>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("  \r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");

} 

      out.write("\r\n");
      out.write(" <div id=\"pageNavPosition\" style=\"cursor:hand; top: 350px;position: relative; color: #ffffff\" ></div>\r\n");
      out.write("<script type=\"text/javascript\"><!--\r\n");
      out.write("        var pager = new Pager('results', 5); \r\n");
      out.write("        pager.init(); \r\n");
      out.write("        pager.showPageNav('pager', 'pageNavPosition'); \r\n");
      out.write("        pager.showPage(1);\r\n");
      out.write("    //--></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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