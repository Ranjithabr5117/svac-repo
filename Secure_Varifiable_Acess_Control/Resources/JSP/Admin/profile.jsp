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
    int id=0;
	String username="",name="",add="",email="",phone="";
	
	while(rs.next())
	{
		id=rs.getInt(1);
		username=rs.getString(4);
		name=rs.getString(2);
		add=rs.getString(5);
		email=rs.getString(7);
		phone=rs.getString(6);
	}

	if(no==1)
	{
%>
		<script type="text/javascript">
    			alert('opps something went wrong');
    			</script>	
<%
	}
	else if(no==0)
	{
%>
			<br>
			<div align="right" style="position:absolute;top:40px;left:375px">
	
			<button class="button button5" type="submit" ><a href="<%=request.getContextPath() %>/EditProfile?username=<%=username %>&no=1">Edit Profile</a></button>
			
				<button class="button button5" type="submit" ><a class="gradientbuttons" href="<%=request.getContextPath() %>/ChangePass?username=<%=username %>&no=1&id=<%=id %>" target="myIframe">Change Password</a></button>
				
			</div>
			<br>
			<div id="a2" align="right" style="position:absolute;top:70px;left:25px">
			
				<p>
				
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#ffffff" style="font-style: bold" size="5">Admin Profile Details</font>
									</td>
									
							</tr>
							
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px"><font color="#ffffff" style="font-style: bold" size="5">Your ID No</font></td>
									<td width="50px">:</td>
									<td> <font color="#ffffff" style="font-style: italic;" size="3"><%=id %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Your Name</font></td>
									<td >:</td>
									<td> <font color="#ffffff" style="font-style: italic;" size="3"><%=name %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Your User ID</font></td>
									<td>:</td>
									<td><font color="#ffffff" style="font-style: italic;" size="3"> <%=username %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Your Mail ID </font></td>
									<td>:</td>
									<td><font color="#ffffff" style="font-style: italic;"     size="3"> <%=email %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Your Cell N0</font>  </td>
									<td>:</td>
									<td><font color="#ffffff" style="font-style: italic;"  ma   size="3">  <%=phone %></font></td>
							</tr>
							
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Your Address</font>  </td>
									<td>:</td>
									<td><font color="#ffffff" style="font-style: italic;" size="3">  <%=add %></font></td>
							</tr>
					</table>
				</p>
				
				
			</div>
		<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
				<script type="text/javascript">
    			alert('Your Profile Updated Successfully');
    			</script>	
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
				<script type="text/javascript">
    			alert('Your Password Updated Successfully');
    			</script>	
			<%
		}
	}
	else if(no==2)
	{
%>


<!-- Display Contents (Starts) -->

					<form id="login" action="<%=request.getContextPath() %>/EditProfile?no=2">
					<input type="hidden" name="admin" value="<%=username %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
					<div align="right" style="position:absolute;top:30px;left:375px">
					
						<input type="submit" value="Save Updates" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="button button5" type="submit" >	<a class="gradientbuttons" href="<%=request.getContextPath() %>/ChangePass?username=<%=username %>&no=1&id=<%=id %>" target="myIframe">Change Password</a></button>
					</div>
					<br></br>
					<div id="a2" align="right" style="position:absolute;top:70px;left:25px">
						
						<p>
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#ffffff" style="font-style: bold" size="5">Edit Admin Profile Details</font>
									</td>
							</tr>
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px"><font color="#ffffff" style="font-style: bold" size="4">Your ID No</td>
									<td width="50px">:</td>
									<td><font color="#ffffff" style="font-style: bold" size="4"> <%=id %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="4">Your Name</font></td>
									<td >:</td>
									<td> 
										<input class="field" type="text" name="name" value="<%=name %>"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="4">Your User ID</font></td>
									<td>:</td>
									<td><font color="#ffffff" style="font-style: bold" size="4"> <%=username %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="4">Your Mail ID</font> </td>
									<td>:</td>
									<td>
										<input class="field" type="text" name="email"   onblur="validateEmail(this);"  value="<%=email %>"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="4">Your Cell No </font> </td>
									<td>:</td>
									<td> 
										<input class="field" type="text" name="phone" maxlength="10" value="<%=phone %>"></input>
									</td>
							</tr>
							
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="4">Your Address </font> </td>
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
      <form id="login" action="<%=request.getContextPath() %>/ChangePass?no=2">
		<input type="hidden" name="admin" value="<%=username %>"></input>
		<input type="hidden" name="id" value="<%=id %>"></input>
		<input type="hidden" name="no" value="2"></input>
		<div align="right" style="position:absolute;top:40px;left:375px">
			<button class="button button5" type="submit" >		<a class="gradientbuttons" href="<%=request.getContextPath() %>/EditProfile?username=<%=username%>&no=1">Edit Profile</a></button>
			<input type="submit" value="Save Updates" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<br></br>
		
		<div id="a2" align="right" style="position:absolute;top:80px;left:25px">
				<p>
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#ffffff" style="font-style: bold" size="5">Change Password</font>
									</td>
							</tr>
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px"><font color="#ffffff" style="font-style: bold" size="5">Your ID No</font></td>
									<td width="50px">:</td>
									<td><font color="#ffffff" style="font-style: bold" size="5"> <%=id %></font></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Current Password</font></td>
									<td >:</td>
									<td> 
										<input class="field" type="password" name="pass"/>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">New Password</font></td>
									<td>:</td>
									<td>
										<input class="field" type="password" name="npass" required="yes"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td><font color="#ffffff" style="font-style: bold" size="5">Confirm new password </font>  </td>
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
    			alert('opps current password is   wrong');
    			</script>	
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
			<script type="text/javascript">
    			alert('new password is not matching with confirmed password');
    			</script>	
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		%>
			<script type="text/javascript">
    			alert('opps something went wrong');
    			</script>	
		<%
	}
}
%>
</body>
</html>


