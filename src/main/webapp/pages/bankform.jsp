<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
body{
   margin-left: 20px;
}
label{  
    color: #DC143C;font-size: 25px;font-family: Cursive,Lucida Handwriting;  
} 
#i{
     border-color: black; font-size: 20px;font-family: Cursive,Lucida Handwriting;
}
#i:hover{
     border-color: #DC143C;font-weight: bold;
}
#rs{
   color: #DC143C;border-color: #DC143C;margin-right: 15px;font-size: 18px;background-color: #fff;
}
#rs:hover{
   color: #fff;background-color: #DC143C;border:2px solid #DC143C;font-weight: bold;
}
#bn{
   margin-left:43%;margin-bottom: 10px;margin-top: 10px;font-family: Cursive,Lucida Handwriting;
}
h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-top: 20px;margin-left: 120px;font-weight: bold;
}
a{
    font-family: Cursive,Lucida Handwriting;margin-left: 50px;
}
.btn-danger{
  font-size: 18px;
}
.btn-danger:hover{
  color: #DC143C;background-color: #fff;border:2px solid #DC143C;font-weight: bold;
}
form{
   margin-bottom: 8%;
}
table {
	margin-left: 22%;margin-top: 20px;margin-bottom: 65px;
}
.error{
    color: #DC143C;font-family: Cursive,Lucida Handwriting;font-size: 15px;font-weight: bold;
}
</style>
</head>
<body>
<h3>Enter the Bank Details :-</h3>          
<form:form  action="addBank" modelAttribute="bk">
<td><form:hidden path="id" value="${param.id}" /></td>
<table>  
	<tr class="form-group">
		<td><form:label path="name">Bank Name   :</form:label></td>
		<td><form:input id="i" path="name" class="form-control" /></td>
		<td><form:errors path="name"  cssClass="error" /></td>  
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="branch">Branch    :</form:label></td>
		<td><form:input id="i" path="branch" class="form-control" /></td> 
		<td><form:errors path="branch"  cssClass="error" /></td> 
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="address">Swift address   :</form:label></td>
		<td><form:input id="i" path="address" class="form-control" /></td>
		<td><form:errors path="address"  cssClass="error" /></td>  
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="accno">Account Number   :</form:label></td>
		<td><form:input id="i" path="accno" class="form-control" /></td> 
		<td><form:errors path="accno"  cssClass="error" /></td> 
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
	<td><form:label path="curr">Currency Type    :</form:label></td>
	<td>
       <form:select id="i" path="curr" class="form-control">
        <form:option value="" label="Select"/>  
        <form:option value="USD" label="USD"/>  
        <form:option value="RUB" label="RUB"/>
        <form:option value="INR" label="INR"/>  
        <form:option value="EUR" label="EUR"/>  
        <form:option value="PKR" label="PKR"/>
        <form:option value="Other" label="Other"/>
        </form:select></td>
        <td><form:errors path="curr"  cssClass="error" /></td> 
    </tr>
</table>	
<div id="bn">	
			<input id="rs" class="btn btn-light" type="reset"  value="Reset">
			<input class="btn btn-danger" type="submit" value="Save & Continue"/>
</div>
</form:form>
<a href="debtorform?id=${param.id}"><button class="btn btn-danger">Back</button></a>
</body>
</html>