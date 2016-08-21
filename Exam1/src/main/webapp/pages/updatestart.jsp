<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String firstname = request.getParameter("firstname");//用request得到 
String lastname = request.getParameter("lastname");//用request得到 
String email = request.getParameter("email");//用request得到 
String id = request.getParameter("id");
%> 
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/SpringMVCExam/updateCustomer" method="POST">
    <table>
        <tr>
            <td><form:label path="first_name">first_name</form:label></td>
            <td><form:input path="first_name"  value="<%=firstname%>"/></td>
        </tr>
        <tr>
            <td><form:label path="last_name" >last_name</form:label></td>
            <td><form:input path="last_name" value="<%=lastname%>"/></td>
        </tr>
        <tr>
            <td><form:label path="email" >email</form:label></td>
            <td><form:input path="email" value="<%=email%>" /></td>
        </tr>
        <tr>
            <td><form:input type="hidden" path="customer_id" value="<%=id%>" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>