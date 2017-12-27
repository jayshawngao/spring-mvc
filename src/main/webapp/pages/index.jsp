<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>INDEX</h2>
	<a href="jayshawn/helloworld.do">helloworld</a>
	<br><br>
	<a href="jayshawn/testPathVariable/10.do">testPathVariable</a>
	<br><br>
	<form action="jayshawn/testRequestParam.do?username=AA&age=18" method="post">
		<input type="submit" value="testRequestParam" />
	</form>
	<br><br>
	<form action="jayshawn/testPOJO.do" method="post">
		<input type="text" name="username" />
		<input type="text" name="age"/>
		<input type="submit" value="testRequestParam" />
	</form>
	<br><br>
	<a href="jayshawn/testModelAndView.do">Test ModelAndView</a>
	<br><br>
	<a href="jayshawn/editUser.do?id=1">Test ModelAttribute</a>
	<br><br>
	<a href="jayshawn/testI18N.do">Test I18N</a>
	<br><br>
	<a href="jayshawn/testView.do">Test View</a>
	<br><br>
	<a href="crud/emps.do">List All Employees</a>
	

</body>
</html>