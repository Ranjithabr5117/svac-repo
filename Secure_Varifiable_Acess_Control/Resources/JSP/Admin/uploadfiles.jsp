<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%><html>
<head>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/pagination.js"></script>	
<style>
.button {
    background-color: #FFFFFF; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}


.button5 {background-color: #555555;} 
</style>
</head>
<body onload="startTimer()">
<%
    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0;
	String fileName="",fileType="",date="";
	if(no==1)
	{
%>	

<form action="<%=request.getContextPath()%>/UploadFileList">
<div align="right" style="position:absolute;top:30px;left:550px">
<button class="button button5" type="submit" name="submit" value="Delete">Delete</button>
	
</div>

<div id="a3" align="right" style="position:absolute;top:75px;left:11px;width: 650px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="650px">
		
		<tr>
			
			<td colspan="5" align="center">
			<font color="#FFFFFF" style="font-style: bold" size="5">Upload File Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th><font color="#FFFFFF" style="font-style: bold" size="5">Select</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="5">File Name</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="5">File Type</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="5">Upload Date</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			fileName=rs.getString(2);
			fileType=rs.getString(3);
			date=rs.getString(4);
		    
%>
			<tr align="center">
				<td><input name="chk" type="checkbox" value="<%=id%>"></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=fileName%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=fileType%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=date%></font></td>
						
			</tr>
<%
		}
    }

%>
  	 </table>
  	 <div id="pageNavPosition" style="cursor:hand; top: 350px;position: relative; color: #ffffff" ></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
   </div>
 </form>
   


<%
	
	if(Utility.parse(request.getParameter("no1"))==1)
	{
		%>
			<script type="text/javascript">
    			alert('Atlest select one checkbox');
    			</script>	
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
			<script type="text/javascript">
    			alert('opps select only one checkbox to delete');
    			</script>	
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		%>
			<script type="text/javascript">
    			alert('Upload details deleted successfully');
    			</script>	
		<%
	}
}
%>


</body>
</html>


