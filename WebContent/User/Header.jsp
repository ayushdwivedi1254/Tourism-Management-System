<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="Home.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
</head>
<body>
<header>
<nav class = "top-nav">
			<ul>
				<li><a href="../home/Login.jsp">Log Out</a></li>
				<li><a>Hello <%=session.getAttribute("email") %></a></li>	
			</ul>
		</nav>
    <!-- HEADER -->
	<div id="header">
		<div class="container">
        	<div class="header-text" align="left">
				<font size="7">
					<p id="title">Tourism Management System</p>
				</font>
			</div>
		</div>
	</div>
</header>
<div id="navbar">
	<nav class="navbar navbar-default" role="navigation" >
		<div class="container-fluid">
			<ul class="nav navbar-nav">
			</ul>
		</div>
	</nav>
</div>
</body>
</html>