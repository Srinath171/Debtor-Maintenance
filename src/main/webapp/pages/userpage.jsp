<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<style type="text/css">
body{
   margin-left: 8%;margin-top: 3%;
}
button{
  cursor: pointer;color: #fff;font-size: 16px;text-transform: uppercase;width: 120px;background-color: #DC143C;font-family: Cursive,Lucida Handwriting;
  border: 0;padding: 10px 0;margin-top: 10px;margin-left: 52px;border-radius: 5px;
} 
button:hover{
  cursor: pointer;color: #DC143C;font-size: 16px;text-transform: uppercase;width: 120px;background-color: #fff;font-family: Cursive,Lucida Handwriting;
  border: 2px solid #DC143C;padding: 10px 0;margin-top: 10px;margin-left: 52px;border-radius: 5px;font-weight: bold;
}
ul#menu li {
  display:inline;
}

h1{
    color: #DC143C;padding: 20px;font-family: Cursive,Lucida Handwriting;
}
</style>
</head>
<body>
<h1>User Menu</h1>
<ul id="menu">
<li><a href="debtorform?id=${param.id}"><button>Add New Debtor Details</button></a><br><br></li>
<li><a href="view"><button>View/Edit Added Debtor Details</button></a><br><br></li>
<li><a href="/logout"><button>Log out</button></a></li>
</ul>
</body>
</html>