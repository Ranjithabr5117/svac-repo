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
    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    AdminDAO adminDAO = AdminDAO.getInstance();
    int acId=0,fileId=0,deptId=0,designationId=0;
    String fileName="",deptName="",designationName="";
	
	if(no==1)
	{
%>	

<form action="<%=request.getContextPath()%>/AccessFileControlList">
<div align="right" style="position:absolute;top:30px;left:450px">
    <%--
    	<input type="submit" name="submit" value="Add" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
     --%>
		<button class="button button5" type="submit" name="submit" value="Edit" >Edit</button>&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="button button5" type="submit" name="submit" value="Delete" >Delete</button>&nbsp;&nbsp;&nbsp;&nbsp;
	
</div>

<div id="a3" align="right" style="position:absolute;top:75px;left:11px;width: 650px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="650px">
		
		<tr>
			
			<td colspan="5" align="center">
			<font color="#ffffff" style="font-style: bold" size="5">View File Access Control Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th><font color="#ffffff" style="font-style: bold" size="4">Select</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">acId</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">File</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Attribute_1</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Attribute_2</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			acId=rs.getInt(1);
			fileId=rs.getInt(2);
			deptId=rs.getInt(3);
			designationId=rs.getInt(4);
			
			fileName = adminDAO.getFileName(fileId);
			deptName = adminDAO.getDepartmentName(deptId);
			designationName = adminDAO.getDesignationName(designationId);
			
			
%>
			<tr align="center">
				<td><input name="chk" type="checkbox" value="<%=acId%>"></td>
						<td><font color="#ffffff" style="font-style: bold" size="3"><%=acId%></font></td>
						<td><font color="#ffffff" style="font-style: bold" size="3"><%=fileName%></font></td>
						<td><font color="#ffffff" style="font-style: bold" size="3"><%=deptName%></font></td>
						<td><font color="#ffffff" style="font-style: bold" size="3"><%=designationName%></font></td>
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

<%-- Adding The  Details --%>

<%
	if(Utility.parse(request.getParameter("no1"))==1)
	{
		%>
		
		<script type="text/javascript">
    			alert('File Access Controlled successfully ..!');
    			</script>
			
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
		
		<script type="text/javascript">
    			alert('File Access Control Updated successfully ..!');
    			</script>
			
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		%>
		
		<script type="text/javascript">
    			alert('Opps,Select atleast one checkbox !');
    			</script>
			
			
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==4)
	{
		%>
		
		<script type="text/javascript">
    			alert('Opps,Select only one checkbox to edit!');
    			</script>
			
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==5)
	{
		%>
		
		<script type="text/javascript">
    			alert(' Data Deleted successfully ..!');
    			</script>
		
		<%
	}
}
	if(no == 2)
	{
%>
		
		<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
			
					
				<form name="f1" action="<%=request.getContextPath()%>/AccessFileControlList">
				<input type="hidden" name="submit" value="Add"></input>
				<input type="hidden" name="add1" value="YES"></input>
					
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
								    		rs = adminDAO.getUploadFiles();
								    	      
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
							<button class="button button5" type="submit" name="submit" value="Provide Access" >Provide Access</button>
								
							</td>
					</tr>
					
					</table>
			</form>
			
		</p>
						
</div>
		
<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
			
			<script type="text/javascript">
    			alert('Sorry,This AcessId is already exists  !');
    			</script>
				
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
			
				
			<script type="text/javascript">
    			alert('Sorry, Somthing went wrong try again!');
    			</script>
				
			<%
		}


}

if(no == 3)
{
	/* Editing The Access Control Details  */
	
	 if(rs != null)
    {
	   
		 while(rs.next())
		{
			 acId=rs.getInt(1);
			 fileId=rs.getInt(2);
			 deptId=rs.getInt(3);
			 designationId=rs.getInt(4);
		}
	  
    }   
%>
		
		<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
			
					
				<form name="f1" action="<%=request.getContextPath()%>/AccessFileControlList">
				<input type="hidden" name="submit" value="Edit"></input>
			    <input type="hidden" name="edit1" value="YES"></input>
			    <input type="hidden" name="id" value="<%=acId%>"></input>
					
					<table id="login" align="center">
					<tr>
							<td colspan="7" align="center">
								<font color="#FFFFFF" style="font-style: bold" size="5">Edit File Access Control</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="3" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">File</font> </td>
							<td width="75px">:</td>
							<td width="200px">
								<select name="file" class="field1" required="yes">
								    	<option value="<%=fileId%>" selected="selected"><%=adminDAO.getFileName(fileId)%></option>
								    	<%
								    		rs = adminDAO.getUploadFiles();
								    	      
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
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_1</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<select name="dept" class="field1" required="yes">
								    	<option value="<%=deptId%>" selected="selected"><%=adminDAO.getDepartmentName(deptId)%></option>
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
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_2</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<select name="designation" class="field1" required="yes">
								    	<option value="<%=designationId%>" selected="selected"><%=adminDAO.getDesignationName(designationId)%></option>
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
							<button class="button button5" type="submit" name="submit"  value="Update">Update</button>
								
							</td>
					</tr>
					
			  </table>
			  
		  </form>
		</p>
</div>

<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
			
			<script type="text/javascript">
    			alert('Sorry, Somthing went wrong try again!');
    			</script>
				
			
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
				<script type="text/javascript">
    			alert('Sorry, Somthing went wrong try again!');
    			</script>
			<%
}
}
%>
</body>
</html>


