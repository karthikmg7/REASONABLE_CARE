<%@ page language="java" contentType="text/html" %>
<%@ page import="mainEntities.Student" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	 <link href="css/customStyle.css" rel="stylesheet">
 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <script src="http://code.jquery.com/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
   <title>Welcome</title>
</head>
<body>
<div class="navbar navbar-inverse navbar-static-top">
  <div class="navbar-inner">
    <div class="container">
	<a href="#" class="navbar-brand">Welcome,<%
	Student obj = (Student)request.getSession().getAttribute("object");
out.print(obj.getName());%></a>  
    <a class="navbar-brand pull-right" href="LogoutServlet">Logout</a>

    </div>
  </div>
</div> 

</body>
</html>