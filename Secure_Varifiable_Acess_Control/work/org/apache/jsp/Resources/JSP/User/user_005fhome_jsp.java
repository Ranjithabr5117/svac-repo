/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2020-08-04 13:14:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Resources.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.DAO.*;

public final class user_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


       HttpSession session = null;
       String username = "";
       int id = 0;
       UserDAO userDAO = null;
       

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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.css\">\r\n");
      out.write("\t\t<link rel='stylesheet' id='camera-css'  href='css/camera.css' type='text/css' media='all'>\r\n");
      out.write("\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/slicknav.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/prettyPhoto.css\" type=\"text/css\" media=\"screen\" title=\"prettyPhoto main stylesheet\" charset=\"utf-8\" />\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/jquery-1.8.3.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700|Open+Sans:700' rel='stylesheet' type='text/css'>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/jquery.mobile.customized.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script> \r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/camera.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/myscript.js\"></script>\r\n");
      out.write("\t\t<script src=\"js/sorting.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t\t<script src=\"js/jquery.isotope.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t\t<!--script type=\"text/javascript\" src=\"js/jquery.nav.js\"></script-->\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\tjQuery(function(){\r\n");
      out.write("\t\t\t\t\tjQuery('#camera_wrap_1').camera({\r\n");
      out.write("\t\t\t\t\ttransPeriod: 500,\r\n");
      out.write("\t\t\t\t\ttime: 3000,\r\n");
      out.write("\t\t\t\t\theight: '490px',\r\n");
      out.write("\t\t\t\t\tthumbnails: false,\r\n");
      out.write("\t\t\t\t\tpagination: true,\r\n");
      out.write("\t\t\t\t\tplayPause: false,\r\n");
      out.write("\t\t\t\t\tloader: false,\r\n");
      out.write("\t\t\t\t\tnavigation: false,\r\n");
      out.write("\t\t\t\t\thover: false\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');

      session = request.getSession();

       if(session != null)
       {
    	   username = session.getAttribute("username").toString();
       }
       
      userDAO = UserDAO.getInstance();
      
      id = userDAO.getID(username);
       

      out.write("\r\n");
      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("\t\t\t\t\t\t <img src=\"bg.png\" width=\"1340px\">\r\n");
      out.write("\t</center>\t\t\t\t\t\r\n");
      out.write(" <div id=\"home\">\r\n");
      out.write(" \r\n");
      out.write("    \t<div class=\"headerLine\">\r\n");
      out.write("\t<div id=\"menuF\" class=\"default\">\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"col-md-8\">\r\n");
      out.write("\t\t\t\t\t<div class=\"navmenu\"style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t<ul id=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\" ><a href=\"");
      out.print(request.getContextPath());
      out.write("/UserProfile\" target=\"myIframe\" class=\"myButton\">Profile</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/DownloadFiles\" target=\"myIframe\" class=\"myButton\">Download File</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\" ><a href=\"");
      out.print(request.getContextPath());
      out.write("/UserTransactionList?submit=get\" target=\"myIframe\" class=\"myButton\">View Transactions</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp?no=5\" class=\"myButton\">Sign Out</a></li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t<iframe align=\"middle\"  frameborder=\"0\" scrolling=\"auto\" name=\"myIframe\" height=\"520\" width=\"785\"></iframe>\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t \r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("   <!-- \r\n");
      out.write("    <div id=\"project\">    \t\r\n");
      out.write("\t\t<div class=\"line3\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div id=\"project1\" ></div>\r\n");
      out.write("\t\t\t\t<div class=\"row Ama\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t<iframe align=\"middle\"  frameborder=\"0\" scrolling=\"auto\" name=\"myIframe\" height=\"520\" width=\"785\"></iframe>\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>          \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("    </div>    \r\n");
      out.write("     -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t<script src=\"js/jquery.prettyPhoto.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/jquery.slicknav.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t\t$(document).ready(function(){\r\n");
      out.write("\t\t\t$(\".bhide\").click(function(){\r\n");
      out.write("\t\t\t\t$(\".hideObj\").slideDown();\r\n");
      out.write("\t\t\t\t$(this).hide(); //.attr()\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t$(\".bhide2\").click(function(){\r\n");
      out.write("\t\t\t\t$(\".container.hideObj2\").slideDown();\r\n");
      out.write("\t\t\t\t$(this).hide(); // .attr()\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t$('.heart').mouseover(function(){\r\n");
      out.write("\t\t\t\t\t$(this).find('i').removeClass('fa-heart-o').addClass('fa-heart');\r\n");
      out.write("\t\t\t\t}).mouseout(function(){\r\n");
      out.write("\t\t\t\t\t$(this).find('i').removeClass('fa-heart').addClass('fa-heart-o');\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tfunction sdf_FTS(_number,_decimal,_separator)\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\tvar decimal=(typeof(_decimal)!='undefined')?_decimal:2;\r\n");
      out.write("\t\t\t\tvar separator=(typeof(_separator)!='undefined')?_separator:'';\r\n");
      out.write("\t\t\t\tvar r=parseFloat(_number)\r\n");
      out.write("\t\t\t\tvar exp10=Math.pow(10,decimal);\r\n");
      out.write("\t\t\t\tr=Math.round(r*exp10)/exp10;\r\n");
      out.write("\t\t\t\trr=Number(r).toFixed(decimal).toString().split('.');\r\n");
      out.write("\t\t\t\tb=rr[0].replace(/(\\d{1,3}(?=(\\d{3})+(?:\\.\\d|\\b)))/g,\"$1\"+separator);\r\n");
      out.write("\t\t\t\tr=(rr[1]?b+'.'+rr[1]:b);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\treturn r;\r\n");
      out.write("}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\tsetTimeout(function(){\r\n");
      out.write("\t\t\t\t\t$('#counter').text('0');\r\n");
      out.write("\t\t\t\t\t$('#counter1').text('0');\r\n");
      out.write("\t\t\t\t\t$('#counter2').text('0');\r\n");
      out.write("\t\t\t\t\tsetInterval(function(){\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tvar curval=parseInt($('#counter').text());\r\n");
      out.write("\t\t\t\t\t\tvar curval1=parseInt($('#counter1').text().replace(' ',''));\r\n");
      out.write("\t\t\t\t\t\tvar curval2=parseInt($('#counter2').text());\r\n");
      out.write("\t\t\t\t\t\tif(curval<=707){\r\n");
      out.write("\t\t\t\t\t\t\t$('#counter').text(curval+1);\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\tif(curval1<=12280){\r\n");
      out.write("\t\t\t\t\t\t\t$('#counter1').text(sdf_FTS((curval1+20),0,' '));\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\tif(curval2<=245){\r\n");
      out.write("\t\t\t\t\t\t\t$('#counter2').text(curval2+1);\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t}, 2);\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t}, 500);\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\tjQuery(document).ready(function(){\r\n");
      out.write("\t\tjQuery('#menu').slicknav();\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("    $(document).ready(function(){\r\n");
      out.write("       \r\n");
      out.write("        var $menu = $(\"#menuF\");\r\n");
      out.write("            \r\n");
      out.write("        $(window).scroll(function(){\r\n");
      out.write("            if ( $(this).scrollTop() > 100 && $menu.hasClass(\"default\") ){\r\n");
      out.write("                $menu.fadeOut('fast',function(){\r\n");
      out.write("                    $(this).removeClass(\"default\")\r\n");
      out.write("                           .addClass(\"fixed transbg\")\r\n");
      out.write("                           .fadeIn('fast');\r\n");
      out.write("                });\r\n");
      out.write("            } else if($(this).scrollTop() <= 100 && $menu.hasClass(\"fixed\")) {\r\n");
      out.write("                $menu.fadeOut('fast',function(){\r\n");
      out.write("                    $(this).removeClass(\"fixed transbg\")\r\n");
      out.write("                           .addClass(\"default\")\r\n");
      out.write("                           .fadeIn('fast');\r\n");
      out.write("                });\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\t});\r\n");
      out.write("    //jQuery\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t/*menu*/\r\n");
      out.write("\t\tfunction calculateScroll() {\r\n");
      out.write("\t\t\tvar contentTop      =   [];\r\n");
      out.write("\t\t\tvar contentBottom   =   [];\r\n");
      out.write("\t\t\tvar winTop      =   $(window).scrollTop();\r\n");
      out.write("\t\t\tvar rangeTop    =   200;\r\n");
      out.write("\t\t\tvar rangeBottom =   500;\r\n");
      out.write("\t\t\t$('.navmenu').find('a').each(function(){\r\n");
      out.write("\t\t\t\tcontentTop.push( $( $(this).attr('href') ).offset().top );\r\n");
      out.write("\t\t\t\tcontentBottom.push( $( $(this).attr('href') ).offset().top + $( $(this).attr('href') ).height() );\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t\t$.each( contentTop, function(i){\r\n");
      out.write("\t\t\t\tif ( winTop > contentTop[i] - rangeTop && winTop < contentBottom[i] - rangeBottom ){\r\n");
      out.write("\t\t\t\t\t$('.navmenu li')\r\n");
      out.write("\t\t\t\t\t.removeClass('active')\r\n");
      out.write("\t\t\t\t\t.eq(i).addClass('active');\t\t\t\t\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(document).ready(function(){\r\n");
      out.write("\t\t\tcalculateScroll();\r\n");
      out.write("\t\t\t$(window).scroll(function(event) {\r\n");
      out.write("\t\t\t\tcalculateScroll();\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t$('.navmenu ul li a').click(function() {  \r\n");
      out.write("\t\t\t\t$('html, body').animate({scrollTop: $(this.hash).offset().top - 80}, 800);\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\t\t\r\n");
      out.write("\t</script>\t\r\n");
      out.write("\t<script type=\"text/javascript\" charset=\"utf-8\">\r\n");
      out.write("\r\n");
      out.write("\t\tjQuery(document).ready(function(){\r\n");
      out.write("\t\t\tjQuery(\".pretty a[rel^='prettyPhoto']\").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true, social_tools: ''});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
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