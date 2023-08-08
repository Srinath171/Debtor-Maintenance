<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h2{  
   color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-top: 60px;margin-left: 60px;
    font-weight: bold;font-size: 35px;
}  
#b1,#b2{
    cursor: pointer;color: #fff;font-size: 20px;width: 120px;background-color: #DC143C;font-family: Cursive,Lucida Handwriting;
    border: 0;padding: 10px 0;margin-top: 140px;margin-left: 28%;border-radius: 5px;
}
#b1:hover,#b2:hover,#bn2:hover{
   color: #DC143C;border:2px solid #DC143C;background-color: #fff;font-weight: bold;
}
#bn2{
     cursor: pointer;color: #fff;font-size: 10px;width: 70px;background-color: #DC143C;font-family: Cursive,Lucida Handwriting;
     margin-top: 13%;font-size: 18px;font-family: Cursive,Lucida Handwriting; margin-left: 6%;border-radius: 5px;
     border: 0;padding: 10px 0;
}
</style>
</head>
<body>

<h2>Select the login type for registering :-</h2>
<button id="b1" onclick="window.location.href='registeruser'">User</button>
<button id="b2" onclick="window.location.href='registeradmin'">Admin</button><br><br>
<button id="bn2" onclick="window.location.href='login'">Back</button>
</body>
</html>