<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Registeration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	
	First name: <form:input path="firstName"/>
	
	<br><br>
	
	Last name: <form:input path="lastName"/>
	
	<br><br>
	
	Country: 
	<form:select path="country" >
		<form:options items="${student.countryOptions}"/>
		
	</form:select>
	
	
	<br><br>
	
	Favourite Programming Languages:
	
	<form:radiobuttons path="favouriteLanguage" items="${student.favoriteLanguageOptions}"/>
	
	<br><br>
	
	Operating Systems:
	
	Linux  <form:checkbox path="operatingSystems" value="Linux"/>
	Mac OS  <form:checkbox path="operatingSystems" value="Mac OS"/>
	Windows  <form:checkbox path="operatingSystems" value="Windows"/>
	
	<br><br>
	
	<input type="submit" value="Submit">
	</form:form>
	
</body>
</html>