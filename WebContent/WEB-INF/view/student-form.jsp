<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
	
	First name: <form:input path="firstName" />

		<br>
		<br>
	
	Last name: <form:input path="lastName" />

		<br>
		<br>
		<%-- Country : <form:select path="country">
			<form:options items="${student.countryOptions}"  />
		</form:select> --%>
	Country:	<form:select path="country">
			<form:options items="${theCountryOptions}" />
		</form:select>
		<br>
		<br>
		
	Favourite language : 
	Java <form:radiobutton path="favouriteLanguage" value="Java" />
	C# <form:radiobutton path="favouriteLanguage" value="C#" />
	Python <form:radiobutton path="favouriteLanguage" value="Python" />
		<br>
		<br>
	Operating Systems:
	Linux <form:checkbox path="operatingSystems" value="Linux" />
	MS <form:checkbox path="operatingSystems" value="MS" />
	MacOS <form:checkbox path="operatingSystems" value="MacOS" />
		<br>
		<br>
		<input type="submit" value="Submit" />


	</form:form>

</body>
</html>
