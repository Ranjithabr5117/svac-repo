
<%@page import="com.DAO.AdminDAO"%>
<%@page import="com.util.Utility"%><html>
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

<body onload="startTimer()">



<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
			
					
				<form action="<%=request.getContextPath()%>/GenerateKey" method="post">
					
					<table id="login" align="center">
					<tr>
							<td colspan="7" align="center">
								<font color="#ffffff" style="font-style: bold" size="5">Generate Key</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="3" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
				
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
							<button class="button button5" type="submit"  value="Update Key">Update Key</button>
								<!-- <input class="button" type="submit"  value="Update Key"></input> -->
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
    			alert('Key Updated Successfully');
    			</script>
		<%
	}

	if(Utility.parse(request.getParameter("no"))==2)
	{
		%>
			<script type="text/javascript">
    			alert('oops something went wrong and key is already generated');
    			</script>
		<%
	}
%>

</body>
</html>