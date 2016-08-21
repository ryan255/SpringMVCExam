<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Spring Page Redirection</title>
</head>
<body>
	<h2>Spring Page Redirection</h2>
	<p>Click below button to redirect the result to new page</p>
	<form:form method="GET" action="/HelloWeb/staticPage">
		<table>
			<tr>
				<td><input type="submit" value="Get HTML Page" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
