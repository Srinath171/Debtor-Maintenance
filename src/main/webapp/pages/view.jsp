<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%> 
<html>
    <head>
        <title>View</title>
<style type="text/css">
h2{  
    text-align: center;color: #DC143C;padding: 20px;margin-right: 33px;font-family: Cursive,Lucida Handwriting;font-weight: bold;
}
th{
    color: #DC143C;font-family: Cursive,Lucida Handwriting;font-size: 95%;
}
td{
    font-size:medium;font-family: Cursive,Lucida Handwriting;font-size: 95%;  
}
button {
	cursor: pointer;color: #fff;font-size: 15px;text-transform: uppercase;
    width: 80px;border: 0;padding: 10px 0;margin-top: 10px;margin-left: -2px;border-radius: 5px;
     background-color: #DC143C;font-family: Cursive,Lucida Handwriting;
}
button:hover {
	cursor: pointer;color: #DC143C;font-size: 15px;text-transform: uppercase;
    width: 80px;border: 2px solid #DC143C;padding: 10px 0;margin-top: 10px;margin-left: -2px;border-radius: 5px;
     background-color: #fff;font-family: Cursive,Lucida Handwriting;font-weight: bold;
}
#back{
     margin-left: 20px;margin-top: 40px;margin-bottom: 30px;
} 
table,th,td {
	padding: 4px;text-align: center;border: 1px solid #d2d2d2;border-collapse: collapse;
	}
table {
  margin-left: auto;margin-right: auto;
}
</style> 
    </head>
    <body>
 
         

        <h2>Debtor Details</h2><br>
        
            <table>
                
                <tr>
                    <th >DebtorID</th>
                    <th >Date & Time of Added/Modified</th>
                    <th >DebtorName</th>
                    <th >Address Line 1</th>
                    <th >Address Line 2</th>
                    <th >Fax No</th>
                    <th >Phone No</th>
                    <th >Email ID</th>
                    <th >Status</th>
                    <th >Reason</th>
                    <th colspan="4">Modify and more</th>
                </tr>
                <c:forEach var="row" items="${list}">
                    <tr>
                      <th><c:out value="${row.id}"/></th>
                      <td><f:parseDate value="${row.date}" var="date" pattern="yyyy-MM-dd H:m:s"/><f:formatDate value="${date}" pattern="dd/MM/yyyy - HH:mm:ss"/></td>
                      <td><c:out value="${row.name}"/></td>
                      <td><c:out value="${row.address1}"/></td>
                      <td><c:out value="${row.address2}"/></td>
                      <td><c:out value="${row.faxno}"/></td>
                      <td><c:out value="${row.phno}"/></td>
                      <td><c:out value="${row.email}"/></td>
                      <th><c:out value="${row.status}"/></th>
                      <td><c:out value="${row.reason}"/></td>
                      <td><a href="viewaccount?id=${row.id}"><button>View Bank Details</button></a></td>
                      <td><a href= "editdebtor?id=${row.id}"><button>Edit Debtor Details</button></a></td>
                      <td><a href= "editbank?id=${row.id}"><button>Edit Bank Details</button></a></td> 
                      <td><a href= "deletedebtor?id=${row.id}&type=1"><button>remove</button></a></td>
                    </tr>
                </c:forEach>
            </table>
        <a  href="userpage?id=0"><button id="back">Go Back</button></a>
    
</body>
</html>