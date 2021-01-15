<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%>
<%@page import="com.DAO.UserDAO"%><html>
<head>
	<script type="text/javascript" src="<%=request.getContextPath() %>/pagination.js"></script>	

</head>
<body onload="startTimer()">

<%
    int no=Utility.parse(request.getParameter("no"));
    
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0,cloudId=0,userid;
	String fileName="",fileTypes="",username="",date = "";
	UserDAO userDAO = UserDAO.getInstance();
	username = session.getAttribute("username").toString();
	if(no==0)
	{
%>	

<div id="a3" align="right" style="position:absolute;top:30px;left:10px;width: 650px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="650px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#FFFFFF" style="font-style: bold" size="5">Available Files To Download</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">FileId</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">File Name</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Upload Date</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Download</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			fileName=rs.getString(2);
			fileTypes=rs.getString(3);
			date=rs.getString(4);
			cloudId = rs.getInt(6);
%>
			<tr align="center">
						<td><font color="#FFFFFF" style="font-style: bold" size="4"><%=id%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="4"><%=fileName%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="4"><%=date%></font></td>
						<td><a href="<%=request.getContextPath() %>/Resources/JSP/User/select_file.jsp?fileId=<%=id%>">Download</a></td>
						
						
			</tr>
<%
		}
    
}
%>
  	 </table>
  	 </p>
   </div>
 </form>
   

<div id="pageNavPosition" style="position:relative;top:360px;left:75px;cursor:hand; color: white"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results',6); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    

<% 	
if(Utility.parse(request.getParameter("no1"))==1)
{
	%>
	
		<script type="text/javascript">
    			alert('Sorry,Download Authentication Failed.');
    			</script>
		
	<%
}
	
}
	if(Utility.parse(request.getParameter("no"))==1)
	{
		
     String file_name = request.getParameter("fname");	
     String downloadedFrom = request.getParameter("dfrom");
%>

	<div id="a2" style="position:absolute;top:40px;left:25" class="c">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="white" style="font-style: bold" size="5">File Download Acknowledgement</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td colspan="3" align="center"><pre><font color="white" style="font-style: bold" size="5">Your File has been Downloaded Successfully......</font></pre></td>
		    
	    </tr>
	    
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white" style="font-style: bold" size="4">File Name</font></pre></td>
		    <td>:</td>
		    <td><font color="white" style="font-style: bold" size="4"><%= file_name %></font></td>
		    
	    </tr>
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white" style="font-style: bold" size="4">File Downloaded From </font></pre></td>
		    <td>:</td>
		    <td><font color="white" style="font-style: bold" size="4"><%= downloadedFrom %></font></td>
		    
	    </tr>
	    
	     <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white">Date </font></pre></td>
		    <td>:</td>
		    <td><%= Utility.getDate()%> &nbsp;&nbsp;<%= Utility.getTime()%></td>
		    
	    </tr>
	    
	</table>
	</div>

<%
} 
  if(Utility.parse(request.getParameter("no"))==3)
	{
    
%>

	<div id="a2" style="position:absolute;top:40px;left:50" class="c">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="green" style="font-style: bold" size="5">File Download Acknowledgement</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td colspan="3" align="center"><pre><font color="red">Sorry Download Process Failed.</font></pre></td>
		    
	    </tr>
	    
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td colspan="3" align="center"><pre><font color="red">Something Went Wrong,Try IT Again....</font></pre></td>
		    
	    </tr>
  
	</table>
	</div>

<%
} 
%>
 <div id="pageNavPosition" style="cursor:hand; top: 350px;position: relative; color: #ffffff" ></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>

</body>
</html>


