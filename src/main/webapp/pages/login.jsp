<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body  
{  
    margin: 0;padding: 0;background-color:#DC143C;font-family: 'Arial';  
}  
.login{  
   width: 382px;overflow: hidden;margin: auto;margin: 20 0 0 460px;padding: 80px;background: #fff;border-radius: 15px ;      
}  
h2{  
    text-align: center;color: #fff;padding: 20px;margin-right: 33px;font-family: Cursive,Lucida Handwriting;font-size: 180%;
}  
label{  
    color: #DC143C;font-size: 17px;font-family: Cursive,Lucida Handwriting;margin-left: 8.6%  
}  
#Uname,#Pass{  
    width: 300px;height: 30px;border-radius: 3px;padding-left: 8px;border-color: #DC143C;font-family: Cursive,Lucida Handwriting;
    margin-left: 8.6%;font-size: 120%;
} 
#log{
    cursor: pointer;color: #fff;font-size: 16px;
    width: 80px;border: 0;padding: 10px 0;margin-top: 10px;margin-left: 70%;border-radius: 5px;
    background-color: #DC143C;font-family: Cursive,Lucida Handwriting;
}
#log:hover{
    background-color: #fff;color: #DC143C;border: 2px solid #DC143C;font-weight: bold;
}
button{
    cursor: pointer;color: #DC143C;font-size: 16px;
    width: 80px;border: 0;padding: 10px 0;border-radius: 5px;margin-left: 8%;margin-top: 5%;
    background-color: #fff;font-family: Cursive,Lucida Handwriting;
}
button:hover{
   background-color: #DC143C;color: #fff;border: 2px solid #fff;font-weight: bold;
}
#up{
    margin-left: 73%;
}
</style>
</head>
<body>
<h2>Login</h2> 
<div class="login"> 
<form method="POST"  action="/login">  
<label for="Uname"><b>Username</b></label>    
<input id="Uname" type="text" name="username" /><br/> <br> 
<label for="Pass"><b>Password</b></label>
<input id="Pass" type="password" name="password"/><br/><br>
<input id="log" type="submit" value=Submit>  
</form>
</div> 
<a href="/"><button id="a">Back</button></a> 
<a href="/register"><button id="up">Sign Up</button></a>
</body>
</html>