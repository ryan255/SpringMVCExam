    <%--<%@page language="java" contentType="text/html; charset=UTF-8"--%>
        <%--pageEncoding="UTF-8"%>--%>

        <html>
        <head>

        </head>
        <body>
        <h2>Hello World!</h2>
        <a href="/SpringMVCExam/pages/login.jsp">登录</a>
        session:<%=request.getSession().getAttribute("name") %>




        </body>
        </html>
