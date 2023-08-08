<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
    <head>
        <title>Authorization</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
<style type="text/css">
#l{
   color: #DC143C;
}
td{
  font-family: Cursive,Lucida Handwriting;font-size: 23px;  
}
h3{
    color: #DC143C;padding: 20px;margin-right: 33px;font-family: Cursive,Lucida Handwriting;font-weight: bold;
    text-align: center;margin-top: 2%;font-size: 35px;
} 
table {
	margin-left: auto;margin-right: auto;margin-top: 4%;
}
#bn{
   margin-left: 52.7%;margin-bottom: 10px;margin-top: 35px;font-family: Cursive,Lucida Handwriting;
}
.btn-danger:hover{
   color: #DC143C;background-color: #fff;border: 2px solid #DC143C;font-weight: bold;
}
#i{
  margin-left: 30%;font-family: Cursive,Lucida Handwriting;
}
</style>
    </head>
    <body>
 
                <h3>Authorization</h3>
                <table>
                <tr><td id="l" >Debtor Name   :</td><td>${row.name}</td></tr>
                <tr><td id="l">Debtor ID    :</td><td>${row.id}</td></tr>
                <tr><td id="l">Status    :</td><td>${row.status}</td></tr>
                <tr><td id="l">Date & Time of Added/Modified    :</td><td><f:parseDate value="${row.date}" var="date" pattern="yyyy-MM-dd H:m:s"/><f:formatDate value="${date}" pattern="dd/MM/yyyy & HH:mm:ss"/></td></tr>
                </table><br>
                <a id="i" href="viewdetails?id=${row.id}"><button class="btn btn-danger">More Details</button></a><br>
                <div id="bn">
                <a href="adminpage"><button class="btn btn-danger">Cancel</button></a>
                <a href="reject?id=${row.id}"><button class="btn btn-danger">Reject</button></a>
                <a href="authorize?id=${row.id}"><button class="btn btn-danger">Authorize</button></a>
                </div>
                
</body>
</html>