<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%><html>
<head>
	
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/pagination.js"></script>


</head>
<body onload="startTimer()">
<%
    int no=Utility.parse(request.getParameter("no"));
    
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0;
	String deptName;
	
	AdminDAO adminDAO = AdminDAO.getInstance();
	
%>	

<div id="a3" align="right" style="position:absolute;top:50px;left:25px;width: 600px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="600px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#ffffff" style="font-style: bold" size="5">Attribute_1 Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th><font color="#ffffff" style="font-style: italic;" size="4">Attribute_1 ID</font></th>
			<th><font color="#ffffff" style="font-style: italic;" size="4">Attribute_1 Name</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			deptName=rs.getString(2);
			
%>
			<tr align="center">
						<td><font color="#ffffff" style="font-style: italic;" size="3"><%=id%></font></td>
						<td><font color="#ffffff" style="font-style: italic;" size="3"><%=deptName%></font></td>
			</tr>
<%
		}
    
}
%>
  	 </table>
  	
   </div>

   <div id="pageNavPosition" style="cursor:hand; top: 350px;position: relative; color: #ffffff" ></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>


</body>
</html>


