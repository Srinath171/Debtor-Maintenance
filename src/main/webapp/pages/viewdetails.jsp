<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%> 
<html>
    <head>
        <title>Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
<style type="text/css">
#l{
   color: #DC143C;
}
td {
	font-family: Cursive,Lucida Handwriting;font-size: 20px;
}
h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;font-weight: bold;margin-left: 5%;margin-bottom: 2%;
}
.btn-danger{
   margin-left: 4%;font-family: Cursive,Lucida Handwriting;margin-top: 12%;
}
.btn-danger:hover{
   color: #DC143C;background-color: #fff;border: 2px solid #DC143C;font-weight: bold;
}
#d1{
  margin-left: 10%;margin-top: 5%;
}
#d2{
  margin-left: 65%;margin-top: -23%;
}
#t2{
 margin-top: 5%;
}
</style>
    </head>
    <body>
                <div id="d1">
                <h3>DebtorDetails</h3>
                <table>
                  <tr><td id="l">Date & Time of Added/Modified    :</td><td><f:parseDate value="${debtor.date}" var="date" pattern="yyyy-MM-dd H:m:s"/><f:formatDate value="${date}" pattern="dd/MM/yyyy & HH:mm:ss"/></td></tr>
                  <tr><td id="l">DebtorID    :</td><td> <c:out value="${debtor.id}"/></td></tr>
                  <tr><td id="l">DebtorName     :</td><td> <c:out value="${debtor.name}"/></td></tr>
                  <tr><td id="l">Address Line 1    :</td><td>  <c:out value="${debtor.address1}"/></td></tr>
                  <tr><td id="l">Address Line 2    :</td><td>  <c:out value="${debtor.address2}"/></td></tr>
                  <tr><td id="l">Fax Number    :</td><td>  <c:out value="${debtor.faxno}"/></td></tr>
                  <tr><td id="l">Phone Number    :</td><td>  <c:out value="${debtor.phno}"/> </td></tr>
                  <tr><td id="l">E-Mail ID    :</td><td>  <c:out value="${debtor.email}"/></td></tr>
                </table>
                </div>
                
                <div id="d2">
                <h3>BankDetails</h3>
                <table id="t2">
                  <tr><td id="l">Bank Name   :</td><td><c:out value="${bank.name}"/></td></tr>
                  <tr><td id="l">Branch Name   :</td><td><c:out value="${bank.branch}"/></td></tr>
                  <tr><td id="l">Swift Address   :</td><td><c:out value="${bank.address}"/></td></tr>
                  <tr><td id="l">Account Number   :</td><td><c:out value="${bank.accno}"/></td></tr>
                  <tr><td id="l">Currency Type    :</td><td><c:out value="${bank.curr}"/></td></tr>
                </table><br>
                </div>
        <a href="select?id=${bank.id}"><button class="btn btn-danger">Go Back</button></a>
    
</body>
</html>