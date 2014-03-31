<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ReasonableCare</title>

   
    <link href="css/bootstrap.min.css" rel="stylesheet">
	 <link href="css/customStyle.css" rel="stylesheet">

   
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <script src="http://code.jquery.com/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
	  
       
        <script>
            $(document).ready(function() {                        
               
            });
        </script>
        
  </head>
  <body>
   <div id="fullBg" />

<div class="container">
  <form class="form-signin customSignIn" action="LoginPageServlet" method="GET">       
      <h1 class="form-signin-heading">Welcome To ReasonableCare!</h1>
      <input id="loginId" name="loginId" type="text" class="form-control"  placeholder="University Login ID" required autofocus="" />
      <input id="password1" name="password1" type="password" class="form-control"  placeholder="Password" required />     
      
      <button id="loginButton" class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>   
    </form>
  <a href="RegisterNewStudent"><p id="para" class="text-center sign-up"><strong>To Register, Click Here!</strong></p><a>
  <div id="welcometext" class="text-center"></div>
</div>

   
  </body>
</html>