<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
 
<html>
    <head>
        <title>Select Operation</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       <style type="text/css">
         h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-left: 3.5%;margin-top: 2%;font-weight: bold;
          }
          th{
    color: #DC143C;font-family: Cursive,Lucida Handwriting;font-size: 22px;
           }
           td{
           font-family: Cursive,Lucida Handwriting;font-size: 18px;
}
         a{
           font-family: Cursive,Lucida Handwriting;
         }
         .btn-danger:hover{
           color: #DC143C;background-color: #fff;border: 2px solid #DC143C;font-weight: bold;
         }
         table,th,td {
	padding: 20px;text-align: center;border: 1px solid #d9d9d9;border-collapse: collapse;
	}
	table {
	margin-left: auto;margin-right: auto;margin-top: 2.5%;
}
     #bn{
       margin-left: 1px;font-size: 120%;
     }
     #bn2{
       margin-top: 3%;margin-left: 60px;margin-bottom: 3%;	
     }
       </style> 
    </head>
    <body>

        <h3>Select the Debtor for Authorization :-</h3>
            <table>
                <tr>
                   <!--  <th scope="col">sno</th> -->
                    <th>Date & Time</th>
                    <th>Debtor Name</th>
                    <th>Status</th>
                    <th>Selection</th>
                </tr>
                <c:forEach var="row" items="${list}">
                    <tr>
                       <%-- <td><c:out value="${row.no}"/></td> --%>
                       <td><f:parseDate value="${row.date}" var="date" pattern="yyyy-MM-dd H:m:s"/><f:formatDate value="${date}" pattern="dd/MM/yyyy & HH:mm:ss"/></td>
                       <td><c:out value="${row.name}"/></td>
                       <td><c:out value="${row.status}"/></td>
                       <td><a href="select?id=${row.id}" id="bn" class="btn btn-danger">Select</a></td>
                    </tr>
                </c:forEach>
            </table>
        <a href="/logout" id="bn2" class="btn btn-danger">Log Out</a>
    
</body>
</html>