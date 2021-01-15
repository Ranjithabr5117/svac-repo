<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%><html>
<head>

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
    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0,deptId=0,designId=0;
	String username="",name="",add="",email="",phone="";
	
	AdminDAO adminDAO = AdminDAO.getInstance();
	
	while(rs.next())
	{
		id=rs.getInt(1);
		username=rs.getString(2);
		name=rs.getString(4);
		deptId=rs.getInt(5);
		designId=rs.getInt(7);
		add = rs.getString(9);
		phone = rs.getString(12);
		email = rs.getString(13);
	}

	if(no==1)
	{
%>
			<script type="text/javascript">
    			alert('opps something went wrong wrong');
    			</script>	
<%
	}
	else if(no==0)
	{
%>
			<br>
			<div align="right" style="position:absolute;top:15px;left:375px">
			<button class="button button5" type="submit" >	<a class="gradientbuttons" href="<%=request.getContextPath() %>/EditUserProfile?username=<%=username %>&no=1">Edit Profile</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="button button5" type="submit" >	<a class="gradientbuttons" href="<%=request.getContextPath() %>/ChangeUserPassword?username=<%=username %>&no=1&id=<%=id %>" target="myIframe">Change Password</a></button>
			</div>
			<br>
			<div id="a2" align="right" style="position:absolute;top:45px;left:11px">
			
				<p>
				
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#FFFFFF" style="font-style: bold" size="5">User Profile Details</font>
									</td>
									
							</tr>
							
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">Your ID No</font></td>
									<td width="50px">:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=id %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Name</font></td>
									<td >:</td>
									<td> <font color="#FFFFFF" style="font-style: bold" size="4"><%=name %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your User ID</font></td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=username %></font></td>
									
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Department</font></td>
									<td>:</td>
									<td> <font color="#FFFFFF" style="font-style: bold" size="4"><%=adminDAO.getDepartmentName(deptId)%></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Designation</font></td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=adminDAO.getDesignationName(designId)%></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Mail ID </font></td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=email %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Cell N0</font>  </td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=phone %></font></td>
							</tr>
							
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Address</font>  </td>
									<td>:</td>
									<td> <font color="#FFFFFF" style="font-style: bold" size="4"> <%=add %></font></td>
							</tr>
					</table>
				</p>
				
				
			</div>
		<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
			
			<script type="text/javascript">
    			alert('Your profile updated successfully ..!');
    			</script>	
				
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
			
			<script type="text/javascript">
    			alert('Your Password updated successfully ..!');
    			</script>	
				
			<%
		}
	}
	else if(no==2)
	{
%>


<!-- Display Contents (Starts) -->

					<form id="login" action="<%=request.getContextPath() %>/EditUserProfile?no=2">
					<input type="hidden" name="admin" value="<%=username %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
					<div align="right" style="position:absolute;top:0px;left:375px">
						<input type="submit" value="Save Updates" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="button button5" type="submit" >	<a class="gradientbuttons" href="<%=request.getContextPath() %>/ChangeUserPassword?username=<%=username %>&no=1&id=<%=id %>" target="myIframe">Change Password</a></button>
					</div>
					<br></br>
					<div id="a2" align="right" style="position:absolute;top:35px;left:25px">
						
						<p>
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#FFFFFF" style="font-style: bold" size="5">Edit User Profile Details</font>
									</td>
							</tr>
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">Your ID No</font></td>
									<td width="50px">:</td>
									<td> <font color="#FFFFFF" style="font-style: bold" size="4"><%=id %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Name</font></td>
									<td >:</td>
									<td> 
										<input class="field" type="text" name="name" value="<%=name %>"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your User ID</font></td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=username %></font></td>
							</tr>
							
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Department</font></td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=adminDAO.getDepartmentName(deptId)%></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Designation</font></td>
									<td>:</td>
									<td><font color="#FFFFFF" style="font-style: bold" size="4"> <%=adminDAO.getDesignationName(designId)%></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Mail ID </font></td>
									<td>:</td>
									<td>
										<input class="field" type="text" name="email" value="<%=email %>"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Cell No </font> </td>
									<td>:</td>
									<td> 
										<input class="field" type="text" name="phone" value="<%=phone %>"></input>
									</td>
							</tr>
							
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Your Address</font>  </td>
									<td>:</td>
									<td>
										<input class="field" type="text" name="add" value="<%=add %>"></input>
									</td>
							</tr>
					</table>
				</p>
						
		</div>
</form>

<!-- Display Contents (Ends) -->
<%
}
	else if(no==3)
	{
%>
      <form id="login" action="<%=request.getContextPath() %>/ChangeUserPassword?no=2">
		<input type="hidden" name="admin" value="<%=username %>"></input>
		<input type="hidden" name="id" value="<%=id %>"></input>
		<input type="hidden" name="no" value="2"></input>
		<div align="right" style="position:absolute;top:40px;left:375px">
		<button class="button button5" type="submit" >	<a class="gradientbuttons" href="<%=request.getContextPath() %>/EditUserProfile?username=<%=username%>&no=1">Edit Profile</a></button>
			<input type="submit" value="Save Updates" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<br></br>
		
		<div id="a2" align="right" style="position:absolute;top:80px;left:25px">
				<p>
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#FFFFFF" style="font-style: bold" size="5">Change Password</font>
									</td>
							</tr>
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">Your ID No</font></td>
									<td width="50px">:</td>
									<td> <font color="#FFFFFF" style="font-style: bold" size="4"><%=id %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Current Password</font></td>
									<td >:</td>
									<td> 
										<input class="field" type="password" name="pass"/>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">New Password</font></td>
									<td>:</td>
									<td>
										<input class="field" type="password" name="npass" required="yes"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#FFFFFF" style="font-style: bold" size="4">Confirm new password </font>  </td>
									<td>:</td>
									<td> 
										<input class="field" type="password" name="cpass"></input>
									</td>
							</tr>
							
					</table>
				</p>
		</div>
	</form>

<%
	if(Utility.parse(request.getParameter("no1"))==1)
	{
		%>
		
		<script type="text/javascript">
    			alert('Opp's,your current password is wrong ..!');
    			</script>	
				
		
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
		
		<script type="text/javascript">
    			alert('Opps,your new password do not match with confirm password ..!');
    			</script>	
			
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		%>
		
		<script type="text/javascript">
    			alert('Opps,Seems something went wrong....!');
    			</script>	
		
		<%
	}
}
%>
</body>
</html>


