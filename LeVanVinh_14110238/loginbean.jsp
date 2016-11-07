<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>   
<HEAD><TITLE>DataBase Search</TITLE></HEAD>  
<BODY>

<%@ page language="java" import="java.sql.*" %>  

<jsp:useBean id="db" scope="request" class="logbean.LoginBean" >

<jsp:setProperty name="db" property="userName" value="<%=request.getParameter("userName")%>"/>
<jsp:setProperty name="db" property="password" value="<%=request.getParameter("password")%>"/>

  </jsp:useBean>
<jsp:forward page="login">
<jsp:param name="username" value="<%=db.getUserName()%>" />
<jsp:param name="password" value="<%=db.getPassword()%>" />

</jsp:forward> 
</body>
</html>