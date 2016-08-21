<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.hand.dto.Customer"%>
<%@page import="com.hand.dto.Page"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	    function selectUser(){
	        document.getElementById("pageForm").action="selectUser.do" ;
	        document.getElementById("pageForm").submit();
	    }
	    function turnPage(action){
	       var total =  document.getElementById("totalPage").value;;
	       var currentPage = document.getElementById("currentPage").value;
	       currentPage = parseInt(currentPage);
	       page = parseInt(currentPage);
	       switch(action){
	            case 'first' : page=1; break;
	            case 'prior' : page--; break;
	            case 'next' : page++;break;
	            case 'last' : page=total; break;
	            case 'jump' : page=currentPage; break;
	            case 'rows' : page=1; break;
	       }
	       if(page<1){
			  page=1;
	          alert("已经到达首页");
	          return;
	       }
	       if(page>total){
			  page=total;
	          alert("已经到达末页");
	          return;
	       }
	       document.getElementById("currentPage").value = page;
	       document.getElementById("pageForm").action="turnPage.do" ;
	       document.getElementById("pageForm").submit();
	    }
	</script>
</head>

<body>
	<form id="pageForm" method="post">
		<table border="1" width="95%">
			<c:forEach var="customer" items="${customerList}">
				<tr>
					<td>firstname：</td>
					<td>${customer.first_name }</td>
					<td>lastname：</td>
					<td>${customer.last_name }</td>
					<td>email：</td>
					<td>${customer.email }</td>
					<td>address：</td>
					<td>${customer.address_id }</td>
					</td>
				</tr>
			</c:forEach>
		</table>
		</br>
		<table width="95%">
			<tr>
				<td align="left"><input type="button" value="首页"
					onclick="turnPage('first')" /> <input type="button" value="上一页"
					onclick="turnPage('prior')" /> <input type="button" value="下一页"
					onclick="turnPage('next')" /> <input type="button" value="末页 "
					onclick="turnPage('last')" />   <input type="hidden"
					name="totalPage" id="totalPage" value="${page.totalPage }" /> <input
					type="text" size="3" maxlength="5" id="currentPage"
					name="currentPage" value="${page.currentPage}"
					onkeydown="if (window.event.keyCode==13) {turnPage('jump');}" />
					/共${page.totalPage }页 共${page.rowsCount }条记录   每页显示 <input
					type="text" size="3" maxlength="5" id="rowsPerPage"
					name="rowsPerPage" value="${page.rowsPerPage}"
					onkeydown="if (window.event.keyCode==13) {turnPage('rows');}" />条记录
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
