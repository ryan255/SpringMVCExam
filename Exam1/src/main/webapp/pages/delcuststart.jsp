<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id = request.getParameter("id");//用request得到 
%> 
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/SpringMVCExam/delCustomer" method="POST">
    <table>
        <tr>
            <td><form:input type="hidden" path="customer_id" value="<%=id%>" /></td>
        </tr>
<tr><h2>确认删除？</h2></tr>
        <tr>
            <td colspan="2"><input type="submit" value="确认删除" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>
