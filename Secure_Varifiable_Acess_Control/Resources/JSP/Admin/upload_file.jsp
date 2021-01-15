
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

<%
	AdminDAO adminDAO = AdminDAO.getInstance();
    String date = adminDAO.getLastKeyUpdatedDate();
%>

<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
			
					
				<form action="<%=request.getContextPath()%>/Resources/JSP/Admin/select_file.jsp">
					
					<table id="login" align="center">
					<tr>
							<td colspan="7" align="center">
								<font color="#FFFFFF" style="font-style: bold" size="5">Upload File</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="3" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="200px"><font color="#FFFFFF" style="font-style: bold" size="4">Subject :</font></td>
							<td width="75px">:</td>
							<td width="200px">
								<input type="text" class="field" name="subject" required="yes">
							</td>
							
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
							<button class="button button5" type="submit"  value="Select File" >Select File</button>
							
							</td>
					</tr>
					
					</table>
			</form>
			
		</p>
						
</div>


</body>
</html>