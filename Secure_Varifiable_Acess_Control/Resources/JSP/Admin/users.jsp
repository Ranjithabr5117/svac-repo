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

<script language="javascript">
	function check()
	{
		if(document.f1.dept.value==0)
		{
			alert("Please,Select Your Department1.");
			document.f1.dept.focus();
			return false
		}
		if(document.f1.designation.value==0)
		{
			alert("Please,Select Your Designation1.");
			document.f1.designation.focus();
			return false
		}
		/* if(document.f1.dept1.value==0)
		{
			alert("Please,Select Your Department2.");
			document.f1.dept1.focus();
			return false
		}
		if(document.f1.designation1.value==0)
		{
			alert("Please,Select Your Designation2.");
			document.f1.designation1.focus();
			return false
		} */
		if(document.f1.dept.value==document.f1.dept1.value)
		{
			alert("Both The Departments Are Same,Select Different One.");
			document.f1.dept.focus();
			return false
		}
		if(document.f1.designation.value==document.f1.designation1.value)
		{
			alert("Both The Designations Are Same,Select Different One.");
			document.f1.designation.focus();
			return false
		}
	}


	function check1()
	{
		if(document.f.dept.value==0)
		{
			alert("Please,Select Your Department1.");
			document.f.dept.focus();
			return false
		}
		if(document.f.designation.value==0)
		{
			alert("Please,Select Your Designation1.");
			document.f.designation.focus();
			return false
		}
		if(document.f.dept1.value==0)
		{
			alert("Please,Select Your Department2.");
			document.f.dept1.focus();
			return false
		}
		if(document.f.designation1.value==0)
		{
			alert("Please,Select Your Designation2.");
			document.f.designation1.focus();
			return false
		}
		if(document.f.dept.value==document.f.dept1.value)
		{
			alert("Both The Departments Are Same,Select Different One.");
			document.f.dept.focus();
			return false
		}
		if(document.f.designation.value==document.f.designation1.value)
		{
			alert("Both The Designations Are Same,Select Different One.");
			document.f.designation.focus();
			return false
		}
	}
	
</script>

</head>
<body onload="startTimer()">
<%
    AdminDAO adminDAO = null;
    adminDAO = AdminDAO.getInstance();
    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    int id=0,deptId1=0,deptId2=0,designId1=0,designId2=0;
	String username="",password="",name="",city="",mobile="",phone="",address="",email="";
	if(no==1)
	{
%>	

<form action="<%=request.getContextPath()%>/ListUser">
<div align="right" style="position:absolute;top:20px;left:250px">

<button class="button button5" type="submit" name="submit" value="Add" >Add</button>&nbsp;&nbsp;&nbsp;&nbsp;
<button class="button button5" type="submit" name="submit" value="Edit" >Edit</button>&nbsp;&nbsp;&nbsp;&nbsp;
<button class="button button5" type="submit" name="submit" value="Delete" >Delete</button>
	
</div>

<div id="a3" align="right" style="position:absolute;top:60px;left:2px;width: 650px;height: 350px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="650px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#FFFFFF" style="font-style: bold" size="5">User Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Select</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Username</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Name</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Department</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Designation</font></th>
			<th><font color="#FFFFFF" style="font-style: bold" size="4">Contact</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			username=rs.getString(2);
			name=rs.getString(4);
			deptId1=rs.getInt(5);
			deptId2=rs.getInt(6);
			designId1=rs.getInt(7);
			designId2=rs.getInt(8);
			city=rs.getString(10);
			mobile=rs.getString(12);
			email = rs.getString(13);
		    
%>
			<tr align="center">
				<td><input name="chk" type="checkbox" value="<%=id%>"></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=username%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=name%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=adminDAO.getDepartmentName(deptId1)%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=adminDAO.getDesignationName(designId1)%></font></td>
						<td><font color="#FFFFFF" style="font-style: bold" size="3"><%=mobile%></font></td>
						
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
<%-- Adding The Server Details --%>

<%
	if(Utility.parse(request.getParameter("no1"))==1)
	{
		%>
		
		
		<script type="text/javascript">
		
		
		alert('User Details Added successfully ..!');
		
		
		</script>
			
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
		
		<script type="text/javascript">
		
		
		alert('User Details Updated successfully ..!');
		
		
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
		
		
		alert('User Details Deleted successfully ..!');
		
		
		</script>
			
			
		<%
	}
	
}
	if(no == 2)
	{
%>
		
		<div id="a3" align="right" style="position:absolute;top:11px;left:11px">
						
		 <p>
			<table id="login" align="center">
					
				<form name="f1" action="<%=request.getContextPath()%>/ListUser">
				<input type="hidden" name="submit" value="Add"></input>
				<input type="hidden" name="add1" value="YES"></input>
					
					<tr>
							<td colspan="7" align="center">
								<font color="#FFFFFF" style="font-style: bold" size="5">Add User Details</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="7" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="175px"><font color="#FFFFFF" style="font-style: bold" size="4">Username</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<input class="field" type="text" name="username" required="yes"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Password</font></td>
							<td >:</td>
							<td> 
								<input class="field" type="password" name="password" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Name</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="name" required="yes"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Email</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="email" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_1</font></td>
							<td>:</td>
							<td> 
									
									<select name="dept" class="field1">
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
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_2</font></td>
							<td>:</td>
							<td> 
									<select name="designation" class="field1" >
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
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_11</font></td>
							<td>:</td>
							<td> 
									
									<select name="dept1" class="field1">
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
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_22</font></td>
							<td>:</td>
							<td> 
									<select name="designation1" class="field1" required="no">
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
					        
					        <td><font color="#FFFFFF" style="font-style: bold" size="4">Address</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="address" required="yes"></input>
							</td>
					        
					        <td width="50px"></td>
					        
							<td><font color="#FFFFFF" style="font-style: bold" size="4">City</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="city" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Phone</font></td>
							<td>:</td>
							<td> 
								<input class="field" type="text" maxlength="10" name="phone"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Mobile</font></td>
							<td>:</td>
							<td> 
								<input class="field" type="text" name="mobile" maxlength="10" required="yes"></input>
							</td>
					</tr>
					
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
							
							<button class="button button5" type="submit" name="submit" value="Register" >Register</button>
								
							</td>
					</tr>
			</form>
			</table>
		</p>
						
</div>
<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
			
			<script type="text/javascript">
		
		
		alert('Sorry,This user is already exists  !');
		
		
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
		if(Utility.parse(request.getParameter("no1"))==3)
		{
			%>
			
			<script type="text/javascript">
		
		
		alert('Please,Select Your Department1.');
		
		
		</script>
				
			<%
		}


}

if(no == 3)
{
	/* Adding The User Details */
	
	String hostName="";
	
	
	 if(rs != null)
    {
	    while(rs.next())
		{
	    	id=rs.getInt(1);
			username=rs.getString(2);
			password=rs.getString(3);
			name=rs.getString(4);
			deptId1=rs.getInt(5);
			deptId2=rs.getInt(6);
			designId1=rs.getInt(7);
			designId2=rs.getInt(8);
			address=rs.getString(9);
			city=rs.getString(10);
			phone=rs.getString(11);
			mobile=rs.getString(12);
			email = rs.getString(13);
			
		}
    }   
	
%>
		
		<div id="a2" align="right"  style="position:absolute;top:11px;left:11px">
						
		 <p>
			<table id="login" align="center">
					
				<form name="f" action="<%=request.getContextPath()%>/ListUser">
				<input type="hidden" name="submit" value="Edit"></input>
			    <input type="hidden" name="edit1" value="YES"></input>
			    <input type="hidden" name="id" value="<%=id %>"></input>
					
					<tr>
							<td colspan="7" align="center">
								<font color="#FFFFFF" style="font-style: bold" size="5">Edit User Details</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="7" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="175px"><font color="#FFFFFF" style="font-style: bold" size="4">Username</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<input class="field" type="text" name="username" value="<%=username %>" readonly="readonly"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Password</font></td>
							<td >:</td>
							<td> 
								<input class="field" type="password" name="password" value="<%=password%>" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Name</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="name" value="<%=name %>" required="yes"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Email</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="email" value="<%=email%>" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_1</font></td>
							<td>:</td>
							<td> 
									<select name="dept" class="field1" required="yes">
									<option value="<%=deptId1%>" selected="selected"><%=adminDAO.getDepartmentName(deptId1) %></option>
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
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_2</font></td>
							<td>:</td>
							<td> 
									<select name="designation" class="field1" required="yes">
								    <option value="<%=designId1%>" selected="selected"><%=adminDAO.getDesignationName(designId1) %></option>
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
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Attribute_11</font></td>
							<td>:</td>
							<td> 
									
									<select name="dept1" class="field1">
								    <option value="<%=deptId2%>" selected="selected"><%=adminDAO.getDepartmentName(deptId2) %></option>
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
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Atribute_22</font></td>
							<td>:</td>
							<td> 
									<select name="designation1" class="field1" required="yes">
								    <option value="<%=designId2%>" selected="selected"><%=adminDAO.getDesignationName(designId2) %></option>
								    	    
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
					        
					        <td><font color="#FFFFFF" style="font-style: bold" size="4">Address</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="address" value="<%=address %>" required="yes"></input>
							</td>
					        
					        <td width="50px"></td>
					        
							<td><font color="#FFFFFF" style="font-style: bold" size="4">City</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="city" value="<%=city %>" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Phone</font></td>
							<td>:</td>
							<td> 
								<input class="field" type="text" name="phone"  maxlength="10" value="<%=phone%>"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#FFFFFF" style="font-style: bold" size="4">Mobile</font></td>
							<td>:</td>
							<td> 
								<input class="field" type="text" name="mobile" maxlength="10" value="<%=mobile%>" required="yes"></input>
							</td>
					</tr>
					
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
							<button class="button button5" type="submit" name="submit" value="Update" >Update</button>
								
							</td>
					</tr>
			</form>
			</table>
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

<div id="pageNavPosition" style="cursor:hand; top: 350px;position: relative; color: #ffffff" ></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>

</body>
</html>


