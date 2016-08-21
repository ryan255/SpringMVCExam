<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>提示：${msg}</h2>
	<form action="/SpringMVCExam/logins" method="POST">
		<table>
			<tr>
				<td><label>用户名</label></td>
				<td><input name="first_name" /></td>
			</tr>
			<tr>
				<td><label>密码：</label></td>
				<td><input name="last_name" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>