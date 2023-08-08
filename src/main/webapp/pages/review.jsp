<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
<style type="text/css">
body{
   margin-left: 20px;
}
#l{
   color: #DC143C;font-weight: bold;
}
td{
  font-family: Cursive,Lucida Handwriting;font-size: 20px;  
}
table {
margin-left: 22%;margin-top: 20px;margin-bottom: 40px;
}
#bn{
  margin-left: 26%;margin-top: 20px;margin-bottom: 20px;
}
h3{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;margin-top: 30px;margin-left: 180px;font-weight: bold;
}  
a{
   font-family: Cursive,Lucida Handwriting;
}
#bn2{
   margin-left: 50px;margin-top: 9.4%;
}
.btn-danger{
  font-size: 18px;
}
.btn-danger:hover{
  color: #DC143C;border:2px solid #DC143C;background-color: #fff;font-weight: bold;
}
</style>
</head>
<body>
<h3>Review :-</h3> 
<table>
<tr><td id="l">Transaction Reference No   :</td><td><p id="transno"></p></td></tr><tr><td></td><td></td></tr>
<tr><td id="l">Date   :</td><td><p id="date"></p></td></tr><tr><td></td><td></td></tr>
<tr><td id="l">Status   :</td><td>P (Pending)</td></tr><tr><td></td><td></td></tr>
<tr><td id="l">Transaction Information   :</td><td>Transaction was successful</td></tr><tr><td></td><td></td></tr>
</table>
<a id="bn" href="userpage?id=0"><button id="bn" class="btn btn-danger">Submit</button></a><br><br>
<a href="bankform?id=${param.id}"><button id="bn2" class="btn btn-danger">Back</button></a>

<script type="text/javascript">
document.getElementById("transno").innerHTML=Math.floor(Math.random()*1000000000);
d=new Date();
document.getElementById("date").innerHTML=d.getDate()+"/"+(d.getMonth()+1)+"/"+d.getFullYear();
</script>
</body>
</html>