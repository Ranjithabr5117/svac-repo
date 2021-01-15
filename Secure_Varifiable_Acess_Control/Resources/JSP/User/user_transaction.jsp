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
    int id=0,userId=0,fileId=0,deptId=0,designationId=0;
	String date="",time="",status="",username="";
	
	AdminDAO adminDAO = AdminDAO.getInstance();
	UserDAO userDAO = UserDAO.getInstance();
    username = (String) session.getAttribute("username");
	
%>	

<div id="a4" align="right" style="position:absolute;top:50px;left:1px;width: 750px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="750px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#FFFFFF" style="font-style: bold" size="5">User Transaction Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th>	<font color="#FFFFFF" style="font-style: bold" size="4">Date</font></th>
			<th>	<font color="#FFFFFF" style="font-style: bold" size="4">File</font></th>
			<th>	<font color="#FFFFFF" style="font-style: bold" size="4">Department</font></th>
			<th>	<font color="#FFFFFF" style="font-style: bold" size="4">Designation</font></th>
			<th>	<font color="#FFFFFF" style="font-style: bold" size="4">Status</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			date=rs.getString(2);
			time=rs.getString(3);
			userId=rs.getInt(4);
			fileId=rs.getInt(5);
			deptId=rs.getInt(6);
			designationId=rs.getInt(7);
			status=rs.getString(8);
			
%>
			<tr align="center">
						<td>	<font color="#FFFFFF" style="font-style: bold" size="3"><%=date%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=userDAO.getFileName(fileId)%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=adminDAO.getDepartmentName(deptId)%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=adminDAO.getDesignationName(designationId)%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=status%></font></td>
						
			</tr>
<%
		}
    
}
%>
  	 </table>
  	 </p>
   </div>
 </form>
   
  <div id="pageNavPosition" style="cursor:hand; top: 350px;position: relative; color: #ffffff" ></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>


</body>
</html>


