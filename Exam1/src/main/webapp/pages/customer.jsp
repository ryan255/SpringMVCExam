<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td>customer_id</td>
			<td>first_name</td>
			<td>last_name</td>
			<td>email</td>
			<td>create_date</td>
		</tr>
		<c:forEach items="${requestScope.customers}" var="cus">
			<tr>
				<td>${cus.getCustomer_id()}</td>
				<td>${cus.getFirst_name() }</td>
				<td></td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>