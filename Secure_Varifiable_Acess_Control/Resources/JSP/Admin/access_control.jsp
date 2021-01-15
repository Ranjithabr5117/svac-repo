
<%@page import="com.DAO.AdminDAO"%>
<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%><html>
<head>
<title>Generate Key</title>
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

<script language="javascript">
	function check()
	{
		if(document.f1.file.value==0)
		{
			alert("Please Select a File");
			document.f1.file.focus();
			return false
		}
		if(document.f1.dept.value==0)
		{
			alert("Please Select the department");
			document.f1.dept.focus();
			return false
		}
		if(document.f1.designation.value==0)
		{
			alert("Please Select the designation");
			document.f1.designation.focus();
			return false
		}
		
	   return true;
		
	}
</script>

<body onload="startTimer()">

<%
	AdminDAO adminDAO = AdminDAO.getInstance();
	ResultSet rs = null;
    ResultSet rs1 = null;
    ResultSet rs2 = null;
%>

<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
			
					
				<form name="f1" action="<%=request.getContextPath()%>/ControlFileAcess" method="post">
					
					<table id="login" align="center">
					<tr>
							<td colspan="7" align="center">
								<font color="#FFFFFF" style="font-style: bold" size="5">File Access Control</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="3" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="5">File Name</font> </td>
							<td width="75px">:</td>
							<td width="200px">
								<select name="file" class="field1" required="yes">
								    	<option value="0">--Select--</option>
								    	<%
								    	      String username = (String) session.getAttribute("username");
								    	      int ownerId = adminDAO.getDataOwnerId(username);
								    	      rs = adminDAO.getUploadedFiles(ownerId);
								    	      
								    		  while(rs.next())
								    	      {
								    	%>
								    	 
								    	<option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
								    	<%
								    	      }
								    	%>
								    	 
									</select>
							</td>
							
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="5">Attribute_1</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<select name="dept" class="field1" required="yes">
								    	<option value="0">--Select--</option>
								    	<%
								    		rs1 = adminDAO.getDepartmentDetails();
								    	      
								    		  while(rs1.next())
								    	      {
								    	%>
								    	 
								    	<option value="<%=rs1.getInt(1)%>"><%=rs1.getString(2)%></option>
								    	<%
								    	      }
								    	%>
								    	 
									</select>
							</td>
							
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					
					<tr align="center">
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="5">Attribute_2</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<select name="designation" class="field1" required="yes">
								    	<option value="0">--Select--</option>
								    	    
								    	<%
								    	      rs2 = adminDAO.getDesignationDetails();
								    	      while(rs2.next())
								    	      {
								    	%>
								    	 
								    	<option value="<%=rs2.getInt(1)%>"><%=rs2.getString(2)%></option>
								    	<%
								    	      }
								    	%>
								    	
									</select>
							</td>
							
					</tr>
					
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
							<button class="button button5" type="submit" name="submit" value="Provide Access">Provide Access</button>
								
							</td>
					</tr>
					
					</table>
			</form>
			
		</p>
						
</div>

<%
	if(Utility.parse(request.getParameter("no"))==1)
	{
		%>
		
		<script type="text/javascript">
    			alert('File Access Information Added Successfully.....');
    			</script>	
			
		<%
	}

	if(Utility.parse(request.getParameter("no"))==2)
	{
		%>
		
		<script type="text/javascript">
    			alert('Opps,Something Went Wrong,Try It Again...');
    			</script>	
			
		<%
	}
%>

</body>
</html>