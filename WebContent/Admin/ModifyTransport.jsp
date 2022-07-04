<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../home/Aside.css">
<link rel="stylesheet" type="text/css" href="../home/Home.css">

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify/ Delete Transport</title>
</head>
<body>
<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>
	<section class="section">
		<div class="sectiondev">
		<h3>Modify / Delete Transport</h3>
			<table class="table table-striped">
				<thead>
					<tr>
					<th>Transport Type</th>
					<th>Vehicle Type</th>
					<th>Vehicle Name</th>
					<th>Cost</th>
					<th>Update</th>
					<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					  try {
					    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism", "akd", "helloakd");
					    	PreparedStatement ps = con.prepareStatement("select * from transport");
					    	ResultSet rs = ps.executeQuery();
					    	
					    	while(rs.next()){ %>
					    	<tr>
					    	<td><%=rs.getString(1) %></td>
					    	<td><%=rs.getString(2) %></td>
					    	<td><%=rs.getString(3) %></td>
					    	<td><%=rs.getString(4) %></td>
					    	<td><a href="../UpdateTransport?transportType=<%=rs.getString(1) %>&vehicleType=<%=rs.getString(2)%>&vehicleName=<%=rs.getString(3)%>&type=update">Update</a></td>
					    	<td><a href="../DeleteTransport?transportType=<%=rs.getString(1) %>&vehicleType=<%=rs.getString(2)%>&vehicleName=<%=rs.getString(3)%>">Delete</a></td>
					    	</tr>
					    	<%} %>
					    	<% 
					    	}
					    	catch (Exception e) {
					    		e.printStackTrace();
					    	}%>
				</tbody>
			</table>
			
		</div>	
	</section>
</body>
</html>