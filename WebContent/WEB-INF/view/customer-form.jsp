<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer form</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" rel="stylesheet" >
<style>
form {
	margin-top: 10px;
}

label {
	font-size: 16px; 
	width: 100px; 
	display: block; 
	text-align: right;
	margin-right: 10px;
	margin-top: 8px;
	margin-bottom: 8px;
}

input {
	width: 250px;
	border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 16px;
}

.save {
	font-weight: bold;
	width: 130px; 
	padding: 5px 10px; 
	margin-top: 30px;
	background: #cccccc;
}

table {   
	border-style:none;
	width:50%;
}

tr:nth-child(even) {background: #FFFFFF}
tr:nth-child(odd) {background: #FFFFFF}

tr {
	border-style:none;
	text-align:left;	
}
	
form {
	margin-top: 10px;
}

label {
	font-size: 16px; 
	width: 100px; 
	display: block; 
	text-align: right;
	margin-right: 10px;
	margin-top: 8px;
	margin-bottom: 8px;
}

input {
	width: 250px;
	border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 16px;
}

.save {
	font-weight: bold;
	width: 130px; 
	padding: 5px 10px; 
	margin-top: 30px;
	background: #cccccc;
}

table {   
	border-style:none;
	width:50%;
}

tr:nth-child(even) {background: #FFFFFF}
tr:nth-child(odd) {background: #FFFFFF}

tr {
	border-style:none;
	text-align:left;	
}
	



</style>
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
	  <h3>Save Customer</h3>
	  <form:form action="saveCustomer" modelAttribute="customer" method="post">
	  <!-- Need to associate this data with customer -->
	  <form:hidden path="id"/>
	    <table>
				<tbody>
					<tr>
						<td><label>First Name: </label></td>
						<td><form:input path="firstName" /></td>
					</tr>                    
                                       
					<tr>
						<td><label>Last Name: </label></td>
						<td><form:input path="lastName" /></td>
					</tr>
                    
					<tr>
						<td><label>Email: </label></td>
						<td><form:input path="email" /></td>
					</tr>
                    
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="save" class="save" /></td>
					</tr>					
				</tbody>

			</table>
	  </form:form>
	  		
		    <div style="clear;both;"></div>
			<p> <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>	</p>
	</div>






</body>
</html>