<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@page import="com.hand.dto.Address"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
<form:form action="/SpringMVCExam/insertCustomer" method="POST">
    <table>
        <tr>
            <td><form:label path="first_name">first_name</form:label></td>
            <td><form:input path="first_name"  value="123"/></td>
        </tr>
        <tr>
            <td><form:label path="last_name" >last_name</form:label></td>
            <td><form:input path="last_name" value="123"/></td>
        </tr>
        <tr>
            <td><form:label path="email" >email</form:label></td>
            <td><form:input path="email" value="123" /></td>
        </tr>
         <tr>
         <form:select path="address_id">  
         <c:forEach var="address" items="${addressList}">
           <option>address</option>
           <form:option value="${address.addree_id }">${address.address }</form:option>
          </c:forEach>
        </form:select><br/>
        <tr>
            <td colspan="2"><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>
