<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=path %>/scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".delete").click(function(){
			var href = $(this).attr("href");
			$("form").attr("action",href).submit();
			return false;
		});
	})

</script>
</head>
<body>
	<h2>emps</h2>
	
		<form action="" method="POST">
			<input type="hidden" name="_method" value="DELETE"/>
		</form>
	
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>ID</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Department</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${requestScope.employees }" var="emp">
				<tr>
					<td>${emp.id }</td>
					<td>${emp.lastName }</td>
					<td>${emp.email }</td>
					<td>${emp.gender==0?'Female':'Male' }</td>
					<td>${emp.department.departmentName }</td>
					<td><a href="<%=path%>/crud/emp/${emp.id}.do">Edit</a></td>
					<td><a class="delete" href="<%=path%>/crud/emp/${emp.id}.do">Delete</a></td>
				</tr>		
			</c:forEach>
		</table>
		
		<br><br>
		<a href="emp.do">Add New Employee</a>
		
		
</body>
</html>