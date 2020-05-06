<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
Hello world of Spring!
<br><br>
<img src="${pageContext.request.contextPath}/resources/images/image.jpg">
<br><br>
Student name : ${param.studentName}
<br><br>
The message : ${message}
</body>
</html>