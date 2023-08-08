<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Debtor Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
body{
   margin-left: 20px;
}
label{  
    color: #DC143C;font-size: 25px;font-family: Cursive,Lucida Handwriting;  
}
input {
	font-family: Cursive,Lucida Handwriting;
} 
#i{
     border-color: black; font-size: 20px;
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
   margin-left:43%;margin-bottom: 10px;margin-top: 10px;
}
h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-top: 20px;margin-left: 120px;
    font-weight: bold;
}
a{
    font-family: Cursive,Lucida Handwriting;margin-left: 50px;
}
.btn-danger{
  font-size: 18px;
}
.btn-danger:hover{
  color: #DC143C;border:2px solid #DC143C;background-color: #fff;font-weight: bold;
}
form{
   margin-bottom: 3%;
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

<h3>Enter the Debtor Details :-</h3>
<form:form  action="addDebtor" modelAttribute="dbt" method="post">

<table>
	<tr> 
		<td><form:hidden path="id" /></td> 
	</tr>
	<tr class="form-group">
		<td><form:label path="name">Debtor Name   :</form:label></td>
		<td><form:input id="i" path="name" class="form-control" /></td>
		<td><form:errors path="name"  cssClass="error" /></td> 
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="address1">Address Line 1    :</form:label></td>
		<td><form:input id="i" path="address1" class="form-control" /></td>
		<td><form:errors path="address1"  cssClass="error" /></td>  
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="address2">Address Line 2   :</form:label></td>
		<td><form:input id="i" path="address2" class="form-control" /></td> 
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="faxno">Fax Number   :</form:label></td>
		<td><form:input id="i" path="faxno" class="form-control" /></td> 
		<td><form:errors path="faxno"  cssClass="error" /></td>
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="phno">Phone Number    :</form:label></td>
		<td><form:input id="i" path="phno" class="form-control" /></td>
		<td><form:errors path="phno"  cssClass="error" /></td> 
	</tr>
	<tr><td></td><td></td></tr>
	<tr class="form-group">
		<td><form:label path="email">E-Mail id    :</form:label></td>
		<td><form:input id="i" path="email" class="form-control" /></td>
		<td><form:errors path="email"  cssClass="error" /></td> 
	</tr>
</table>
<div id="bn">	
		<input id="rs" class="btn btn-light" type="reset"  value="Reset">
		<input class="btn btn-danger" type="submit" value="Save & Continue"/>
</div>
</form:form><br>
<a href="userpage?id=${param.id}"><button class="btn btn-danger">Back</button></a>
</body>
</html>