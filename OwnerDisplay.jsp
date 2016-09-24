<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import=" java.util.List,java.util.ArrayList"%>
<%@ page import="DAO.Owner"%>
<%@ page import="DAO.OwnerDAO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 5px;
	text-align: left;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		List<Owner> list = new ArrayList<Owner>();
		OwnerDAO dao = new OwnerDAO();
		list = dao.findAll();
	%>
	<table>
		<caption>
			<h2>Select Owner name to update.</h2>
		</caption>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Address</th>
			<th>City</th>
			<th>Telephone</th>
		</tr>

		<%
			for (Owner list1 : list) {
		%>
		<tr>
			<td>
				<%
					out.println(list1.getId());
				%>
			</td>
			<td><a
				href="Controller?name=<%out.println(list1.getFirst_name());%>">
					<%
						out.println(list1.getFirst_name());
					%>
			</a></td>
			<td>
				<%
					out.println(list1.getLast_name());
				%>
			</td>
			<td>
				<%
					out.println(list1.getAddress());
				%>
			</td>
			<td>
				<%
					out.println(list1.getCity());
				%>
			</td>
			<td>
				<%
					out.println(list1.getTelephone());
				%>
			</td>
		</tr>



		<%
			}
		%>
	</table>

</body>
</html>