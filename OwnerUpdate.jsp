<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="DAO.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//HttpSession session = request.getSession();
	//	if (session.getAttribute("uname") == null) {
	//		response.sendRedirect("Login");
		//}%>
<form action="Controller" >
<%

Owner dto=new Owner();
dto=(Owner)request.getAttribute("dto1"); 
session.setAttribute("idvalue", dto.getId());%>
<table>

<tr><td>id:<input type="text" value="<% out.println(dto.getId());%>" name="idupdate" ></input></td></tr><tr>
<td>First Name:<input type="text" value="<% out.println(dto.getFirst_name());%>"name="fname"></input></td></tr><tr>
<td>Last Name:<input type="text" value="<% out.println(dto.getLast_name());%>"name="lname"></td></tr><tr>
<td>Address:<input type="text" value="<% out.println(dto.getAddress());%>"name="address"></td></tr><tr>
<td>City:<input type="text" value="<% out.println(dto.getCity());%>" name="city"></td></tr><tr>
<td>Telephone<input type="text" value="<% out.println(dto.getTelephone());%>" name="telephone"></td></tr>
<td><input type="submit" value="Update"></td>

</table>
</form>
</body>
</html>