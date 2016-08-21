# SpringMVCExam
## 请按照如下提示运行
1. 数据库配置文件dbconfig.properties位于src/main/resource目录下 
2. 运行 命令行进入Exam1目录 执行 mvn tomcat:run
3. 在浏览器输入 http://localhost:8080/SpringMVCExam/
4. 登录时注意大小写 （可使用MARY SMITH）

P.S.删除与修改功能因为使用了FileSystemXmlApplicationContext函数，因为该函数访问的绝对路径，所以在其他设备上（或因操作系统不同）会因为路径不同而报错（找不到ApplicationContext.xml），手动修改绝对路径可解。