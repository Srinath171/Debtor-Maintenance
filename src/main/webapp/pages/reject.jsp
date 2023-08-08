<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reason</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
h3{
    color: #DC143C;padding: 20px;margin-right: 33px;font-family: Cursive,Lucida Handwriting;font-weight: bold;
    margin-left: 5%;margin-top: 5%;
}
#i{
     border-color: black;width: 30%;margin-left: 13%;font-family: Cursive,Lucida Handwriting;font-size: 20px;
}
#s{
     margin-left: 38%;margin-top: 35px;font-family: Cursive,Lucida Handwriting;
}
.btn-danger:hover{
     color: #DC143C;background-color: #fff;border: 2px solid #DC143C;font-weight: bold;
}
a{
   margin-left: 4%;font-family: Cursive,Lucida Handwriting;
}
button {
	margin-top: 19%;
}
</style>
</head>
<body>
<h3>Reject Reason</h3>
<form action="reason">
<input type="hidden" name="id" value="${param.id}"/>
<input id="i" class="form-control" type="text" name="reason" minlength="4" maxlength="50" required >
<input id="s" class="btn btn-danger" type="submit" value="Submit">
</form>
<a href="select?id=${param.id}"><button class="btn btn-danger">Go Back</button></a>
</body>
</html>