<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录</title>
</head>
<body>
<!--logo-->
<div>
    <div class="bd-style">
        <label class="glyphicon glyphicon-asterisk">
            吴瀚元－10971
        </label>
    </div>
</div>



<!--登录面板-->
<div>
    <div>电影租赁管理系统</div>
    <div>
        <form action="/SpringMVCExam/logins" method="POST">
       <div>${msg}</div> 
            <div>
            
                <label for="inputEmail3">用户名</label>
                <div>
                    <input  name="first_name" type="text" id="inputEmail3">
                </div>
            </div>
            <div>
                <label for="inputPassword3" >密码</label>
                <div>
                    <input  name="last_name" type="password" id="inputPassword3">
                </div>
            </div>
            <div>
                <div>
                    <button type="submit">登录</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>