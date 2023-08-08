<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
    <head><title>Bank Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       <style type="text/css">
         h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-top: 30px;font-weight: bold;font-size: 38px;margin-left: 25%;
   }
          #td{
    color: #DC143C;font-family: Cursive,Lucida Handwriting;
           }
           #td2{
           font-family: Cursive,Lucida Handwriting;
}
         a{
           margin-left: 6.5%;font-family: Cursive,Lucida Handwriting;margin-top: 10%;;
         }
         .btn-danger:hover{
  color: #DC143C;background-color: #fff;border:2px solid #DC143C;font-weight: bold;
}
         table{
           margin-left: 20%;font-size: 120%;font-size: 30px;margin-top: 2%;
         }
       </style> 
    </head>
    <body>
    <h3>Bank Details</h3>
        <form>
            <table>
                   <tr><td id="td">Bank Name  :</td><td id="td2"><c:out value="${row.name}"/></td></tr>
                   <tr><td id="td">Branch Name  :</td><td id="td2"><c:out value="${row.branch}"/></td></tr>
                   <tr><td id="td">Swift Address  :</td><td id="td2"><c:out value="${row.address}"/></td></tr>
                   <tr><td id="td">Account Number   :</td><td id="td2"><c:out value="${row.accno}"/></td> </tr>
                   <tr><td  id="td">Currency Type   :</td><td id="td2"><c:out value="${row.curr}"/></td> </tr>
            </table>
        </form>
        <a href="view" class="btn btn-danger">Go Back</a>
    
</body>
</html>