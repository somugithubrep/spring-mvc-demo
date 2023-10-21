<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student registration form </title>
</head>

<body>

<form:form action="processForm" modelAttribute="student">

First name: <form:input path="firstName" />

<br><br>

Last name: <form:input path="lastName" />

<br><br>

Country:

<form:select path="country">


<form:options items="${student.countryOptions}" />


</form:select>

<br><br>

Favorite Language:

Java <form:radiobutton path="favoriteLanguage" value="Java" />
PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
CSS <form:radiobutton path="favoriteLanguage" value="CSS" />
HTML <form:radiobutton path="favoriteLanguage" value="HTML" />

<br><br>

Operating Systems:

Linux <form:checkbox path="operatingSystems" value="Linux" />
MAC <form:checkbox path="operatingSystems" value="MAC" />
Windows <form:checkbox path="operatingSystems" value="Windows" />
Note <form:checkbox path="operatingSystems" value="Note" />

<br><br>


<input type="Submit" value="Sumbit" />

</form:form>

</body>
</html>