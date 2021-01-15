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
<script>
        function validateEmail(emailField)
        {
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(emailField.value) == false) 
        {
            alert('Invalid Email Address');
            emailField.value = null;
            return false;
        }

        return true;

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
    int id=0,deptId=0,designId=0;
	String username="",password="",name="",city="",mobile="",phone="",address="",email="";
	if(no==1)
	{
%>	

<form action="<%=request.getContextPath()%>/ListDataOwners">
<div align="right" style="position:absolute;top:20px;left:100px">
	<!--<button class="button button5" type="submit"  name="submit" value="Add" >ADD</button>&nbsp;&nbsp;&nbsp;&nbsp;
	<button class="button button5" type="submit"  name="submit" value="Edit" >EDIT</button>&nbsp;&nbsp;&nbsp;&nbsp;
	<button class="button button5" type="submit"  name="submit" value="Delete" >DELETE</button> -->
	
</div>

<div id="a3" align="right" style="position:absolute;top:60px;left:2px;width: 660px;height: 350px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="660px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#ffffff" style="font-style: bold" size="5">Data Owner Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th><font color="#ffffff" style="font-style: bold" size="4">Select</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Name</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Username</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Address</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Contact</font></th>
			<th><font color="#ffffff" style="font-style: bold" size="4">Email Id</font></th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			username=rs.getString(4);
			name=rs.getString(2);
			address=rs.getString(5);
			mobile=rs.getString(6);
			email = rs.getString(7);
		    
%>
			<tr align="center">
				<td><input name="chk" type="checkbox" value="<%=id%>"></td>
						<td><font color="#ffffff" style="font-style: italic;" size="3"><%=name%></font></td>
						<td><font color="#ffffff" style="font-style: italic;" size="3"><%=username%></font></td>
						<td><font color="#ffffff" style="font-style: italic;" size="4"><%=address%></font></td>
						<td><font color="#ffffff" style="font-style: italic;" size="4"><%=mobile%></font></td>
						<td width="50px"><font color="#ffffff" style="font-style: italic;" size="4"><%=email%></font></td>
						
			</tr>
<%
		}
    }

%>
  	 </table>
  	 </p>
   </div>
 </form>
   

<div id="pageNavPosition" style="position:absolute;top:420px;left:550px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>

<%-- Adding The Server Details --%>

<%
	if(Utility.parse(request.getParameter("no1"))==1)
	{
		%>
			<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
			<script type="text/javascript">
    			alert('Data Owner details added Successfully');
    			</script>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
			<script type="text/javascript">
    			alert('Data Owner Updated Successfully');
    			</script>
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		%>
			<script type="text/javascript">
    			alert('select atleast one ');
    			</script>
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==4)
	{
		%>
			<script type="text/javascript">
    			alert('select only one check box to edit');
    			</script>
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==5)
	{
		%>
			<script type="text/javascript">
    			alert('Data owner details deleted successfully');
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
					
				<form action="<%=request.getContextPath()%>/ListDataOwners">
				<input type="hidden" name="submit" value="Add"></input>
				<input type="hidden" name="add1" value="YES"></input>
					
					<tr>
							<td colspan="7" align="center">
								<font color="#ffffff" style="font-style: bold;" size="5">Add Data Owner Details</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="7" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="175px"><font color="#ffffff" style="font-style: italic;" size="4">Username</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<input class="field" type="text" name="username" required="yes"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#ffffff" style="font-style: italic;" size="4">Password</font></td>
							<td >:</td>
							<td> 
								<input class="field" type="password" name="password" required="yes"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#ffffff" style="font-style: italic;" size="4">Name</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="name" required="yes"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#ffffff" style="font-style: italic;" size="4">Address</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="address" required="yes"></input>
							</td>
							
					</tr>
					
				
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
					        
					        <td><font color="#ffffff" style="font-style: italic;" size="4">Email</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="email"  onblur="validateEmail(this);"  required="yes"></input>
							</td>
					        
					        <td width="50px"></td>
					        
							<td><font color="#ffffff" style="font-style: italic;"  size="4">Phone</font></td>
							<td>:</td>
							<td> 
								<input class="field" type="text" maxlength="10" name="phone"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					
					<tr align="center">
							<td colspan="7" align="center">
						<button class="button button5" type="submit"  name="submit" value="Register" >Register</input>
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
    			alert('Sorry this user already exists');
    			</script>	
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
				<script type="text/javascript">
    			alert('something went wrong try again');
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
	    	password=rs.getString(4);
			username=rs.getString(4);
			name=rs.getString(2);
			address=rs.getString(5);
			phone=rs.getString(6);
			email = rs.getString(7);
			
		}
    }   
	
%>
		
		<div id="a2" align="right"  style="position:absolute;top:11px;left:11px">
						
		 <p>
			<table id="login" align="center">
					
				<form action="<%=request.getContextPath()%>/ListDataOwners">
				<input type="hidden" name="submit" value="Edit"></input>
			    <input type="hidden" name="edit1" value="YES"></input>
			    <input type="hidden" name="id" value="<%=id %>"></input>
					
					<tr>
							<td colspan="7" align="center">
								<font color="#ffffff" style="font-style: bold;" size="5">Edit Data Owner Details</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="7" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="175px"><font color="#ffffff" style="font-style: italic;" size="4">Username</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<input class="field" type="text" name="username" value="<%=username %>" required="yes" readonly="readonly"></input>
							</td>
							
							<td width="50px"></td>
							
							<td><font color="#ffffff" style="font-style: italic;" size="4">Password</font></td>
							<td >:</td>
							<td> 
								<input class="field" type="text" name="password" value="<%=password%>" required="yes" readonly="readonly"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td><font color="#ffffff" style="font-style: italic;" size="4">Name</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="name" value="<%=name %>" required="yes"></input>
							</td>
							
							<td width="50px"></td>
							
							 <td><font color="#ffffff" style="font-style: italic;" size="4">Address</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" name="address" value="<%=address %>" required="yes"></input>
							</td>
							
					</tr>
					
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
					        
					       <td><font color="#ffffff" style="font-style: italic;" size="4">Email</font></td>
							<td>:</td>
							<td> 
									<input class="field" type="text" onblur="validateEmail(this);" name="email" value="<%=email%>" required="yes"></input>
							</td>
					        
					        <td width="50px"></td>
					        
							<td><font color="#ffffff" style="font-style: italic;" size="4">Phone</font></td>
							<td>:</td>
							<td> 
								<input class="field" type="text" name="phone" maxlength="10"  value="<%=phone%>"></input>
							</td>
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
							<button class="button button5" type="submit"  name="submit" value="Update" >UPDATE</input>
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
    			alert('Sorry something went wrong');
    			</script>	
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
				<script type="text/javascript">
    			alert('Sorry something went wrong try again');
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


