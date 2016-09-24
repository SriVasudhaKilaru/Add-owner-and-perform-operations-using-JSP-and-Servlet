<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="DAO.*" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<h2>Successfully added into Database</h2>
<table>
<%
List<Owner> getList=new ArrayList<Owner>();
getList = (List<Owner>) session.getAttribute("list"); 
for(Owner list: getList){
%>
 <tr>   <td> <% out.println(list.getId()); %> </td>
      <td> <% out.println(list.getFirst_name()); %> </td>
	  <td> <% out.println(list.getLast_name()); %> </td>
	   <td> <% out.println(list.getAddress()); %> </td>
         	<td> <% out.println(list.getCity()); %></td>
      <td><% out.println(list.getTelephone()); %></td> 
	 </tr>
<%
}
%>
</table>
</body>
</html>




