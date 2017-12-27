<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateUser" method="post"> 
		<input type="text" name="id" value="${user2.id }" />
		<br>
		<input type="text" name="username" value="${user2.username }"/>
		<br>
		<input type="text" name="age" value="${user2.age }"/>
		<br>
		<input type="submit" value="修改" />
	</form>

</body>
</html>