<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%>
<%@page import="com.DAO.UserDAO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%><html>
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
</head>

<script language="javascript">
	function check()
	{
		if(document.f1.file.value.length==0)
		{
			alert("Please Select a File");
			return false
		}
		else
		{
			return true;
		}
	}
</script>

<body onload="startTimer()">

<%!
	int fileId = 0;
%>

<%
	fileId = Integer.parseInt(request.getParameter("fileId").toString());
    System.out.println(" Download File Id : " + fileId);
%>

<div id="a2" style="position:absolute;top:50px;left:50px" class="c">
	<form name="f1" action="<%=request.getContextPath()%>/ReadFile?fileId=<%=fileId%>" method="post" enctype="multipart/form-data">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="#FFFFFF" style="font-style: bold" size="5">Select Your File Having Key Information</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		<tr>
				<td>&nbsp;</td>
		</tr>
	    
		<tr id="label" align="center">
		    
			<td align="center" colspan="3">
				
					<input type="file" class="field2" name="file" required="required" width="150px"></input>
				
			</td>
		</tr>
		
		<tr>
				<td>&nbsp;</td>
		</tr>
		
		<tr>
				<td>&nbsp;</td>
		</tr>
		
		<tr align="center">
			<td align="center" colspan="3">
			<button class="button button5" type="submit" name="submit" value="Download File">Download File</button>
					
			</td>
	    </tr>
	
	</table>
	</form>
	</div>
</body>
</html>