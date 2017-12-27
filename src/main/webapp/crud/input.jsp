<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form action="${pageContext.servletContext.contextPath }/crud/emp.do" method="POST" modelAttribute="employee">
		<c:if test="${!empty employee.id }">
			<form:hidden path="id"/>
			<input type="hidden" name="_method" value="PUT"/>
		</c:if>
		
		<c:if test="${empty employee.id}">
			LastName:<form:input path="lastName"/>
		</c:if>
		<br>
		Email:<form:input path="email"/>
		<br>
		
		<%
			Map<String,String> genders = new HashMap<String, String>();
			genders.put("1","Male");
			genders.put("0","Female");
			request.setAttribute("genders", genders);
		%>
		Gender:<form:radiobuttons path="gender" items="${genders }"/>
		<br>
		Department:<form:select path="department.id" items="${departments }" itemLabel="departmentName" itemValue="id"></form:select>
		<br>
		<input type="submit" value="Submit"/>
	</form:form>

</body>
</html>