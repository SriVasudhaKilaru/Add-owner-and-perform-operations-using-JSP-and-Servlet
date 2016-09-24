<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Owner</title>
</head>
<body>
<b>Owner Registration form</b> <br/> <br/>
<form method= "post" action="getValues">
First Name: <input type = "text" name="fname"> <br/> <br/>
Last Name: <input type = "text" name = "lname"> <br/> <br/>
Address: <input type ="text" name="address"> <br/> <br/>
City: <input type="text" name="city"> <br/> <br/>
Telephone: <input type="tel" name="telephone"> <br/> <br/>
<input type="submit" value="Submit"/>
</form>
</body>
</html>