<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-top: 60px;margin-left: 120px;
    font-weight: bold;
}
body{
   margin-left: 20px;
}
label{  
    color: #DC143C;font-size: 25px;font-family: Cursive,Lucida Handwriting;  
}
input{
	font-family: Cursive,Lucida Handwriting;
}
#username,#pswd1,#pswd2{
 font-size: 20px;border-color: black;
}
#username:hover{
   border-color: #DC143C;font-weight: bold;
}
#pswd1:hover{
   border-color: #DC143C;font-weight: bold;
}
#pswd2:hover{
   border-color: #DC143C;font-weight: bold;
}
#bn{
  margin-bottom: 10px;margin-top: 10px;font-size: 18px;font-family: Cursive,Lucida Handwriting; 
}
table {
	margin-left: 22%;margin-top: 50px;margin-bottom: 65px;
}
.btn-danger:hover{
  color: #DC143C;border:2px solid #DC143C;background-color: #fff;font-weight: bold;
}
#rs{
   color: #DC143C;border-color: #DC143C;margin-right: 15px;font-size: 18px;background-color: #fff;margin-left: 45%;
}
#rs:hover{
   color: #fff;background-color: #DC143C;border:2px solid #DC143C;font-weight: bold;
}
a{
    font-family: Cursive,Lucida Handwriting;margin-left: 70px;
}
#bn2{
  margin-bottom: 10px;margin-top: 90px;font-size: 18px;font-family: Cursive,Lucida Handwriting; 
}
</style>
<script>  
function matchPassword() {  
	var pw1=document.f1.pswd1.value;  
	var pw2=document.f1.pswd2.value;  
  if(pw1==pw2)  
  {   
	 return true; 
  } else {  
    alert("Passwords did not match"); 
    return false;
  }  
}  
</script> 
</head>
<body>
<h3>User Registration :-</h3>
<form:form  method="POST" name="f1" modelAttribute="user" onsubmit="return matchPassword()" action="addUser">
<table> 
<tr class="form-group"> 
<td><form:label path="userName">Create Username    :</form:label> </td>   
<td><form:input  id="username" type="text" path="userName" class="form-control" minlength="8" maxlength="20" required="required" /></td>
</tr>
<tr><td> </td><td> </td></tr>
<tr class="form-group"> 
<td><form:label path="password">Set Password    :</form:label></td>
<td><form:input id="pswd1" type="password" class="form-control" path="password" minlength="5" maxlength="15" required="required" /></td>
</tr>
<tr><td> </td><td> </td></tr>
<tr class="form-group">
<td><label  for="pswd2">Confirm Password    :</label></td>
<td><input id="pswd2" type="password" class="form-control" name="pswd2" minlength="5" maxlength="15" required="required" /></td>
</tr>
</table>
<input id="rs" class="btn btn-light" type="reset"  value="Reset">
<input class="btn btn-danger" id="bn" type="submit"  value="Submit"/>
</form:form>
<a href="register"><button id="bn2" class="btn btn-danger">Back</button></a>
</body>
</html>