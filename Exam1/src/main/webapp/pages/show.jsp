<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.hand.dto.Customer"%>
<%@page import="com.hand.dto.Page"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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


<link rel="stylesheet" type="text/css" href="pages/bootstrap.min.css">
<script src="pages/jquery-3.1.0.min.js.css"></script>
<script src="pages/bootstrap.min.js"></script>
<script type="text/javascript">
	function selectUser() {
		document.getElementById("pageForm").action = "selectUser.do";
		document.getElementById("pageForm").submit();
	}
	function turnPage(action) {
		var total = document.getElementById("totalPage").value;
		;
		var currentPage = document.getElementById("currentPage").value;
		currentPage = parseInt(currentPage);
		page = parseInt(currentPage);
		switch (action) {
		case 'first':
			page = 1;
			break;
		case 'prior':
			page--;
			break;
		case 'next':
			page++;
			break;
		case 'last':
			page = total;
			break;
		case 'jump':
			page = currentPage;
			break;
		case 'rows':
			page = 1;
			break;
		}
		if (page < 1) {
			page = 1;
			alert("已经到达首页");
			return;
		}
		if (page > total) {
			page = total;
			alert("已经到达末页");
			return;
		}
		document.getElementById("currentPage").value = page;
		document.getElementById("pageForm").action = "turnPage.do";
		document.getElementById("pageForm").submit();
	}
</script>
</head>

<body>
	<%
		if (request.getSession().getAttribute("sessionname") == null) {
	%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
		}
	%>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="show">吴瀚元－10971</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Admin</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="#"></a></li>
					<li><a href="show">Customer管理</a></li>
					<li><a href="show">Customer管理</a></li>
					<li><a href="#">Film管理</a></li>
				</ul>
			</div>
			<h2 class="sub-header">Section title</h2>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>LastName &nbsp &nbsp &nbsp &nbsp &nbsp FirstName</th>
							<th>Email</th>
							<th>AddressId</th>
						</tr>
					</thead>
					<form id="pageForm" method="post">
						<table border="1" width="80%">
							<c:forEach var="customer" items="${customerList}">
								<tr>
									<td>${customer.first_name }</td>
									<td>${customer.last_name }</td>
									<td>${customer.email }</td>
									<td>${customer.address_id }</td>
								</tr>
							</c:forEach>
						</table>
						</br>
						<table>
							<tr>
								<td align="left"><input type="button" value="首页"
									onclick="turnPage('first')" /> <input type="button"
									value="上一页" onclick="turnPage('prior')" /> <input
									type="button" value="下一页" onclick="turnPage('next')" /> <input
									type="button" value="末页 " onclick="turnPage('last')" />   <input
									type="hidden" name="totalPage" id="totalPage"
									value="${page.totalPage }" /> <input type="text" size="3"
									maxlength="5" id="currentPage" name="currentPage"
									value="${page.currentPage}"
									onkeydown="if (window.event.keyCode==13) {turnPage('jump');}" />
									/共${page.totalPage }页 共${page.rowsCount }条记录   每页显示 <input
									type="text" size="3" maxlength="5" id="rowsPerPage"
									name="rowsPerPage" value="${page.rowsPerPage}"
									onkeydown="if (window.event.keyCode==13) {turnPage('rows');}" />条记录
								</td>
							</tr>
						</table>
					</form>
				</table>
			</div>
		</div>
	</div>

</body>
</html>
