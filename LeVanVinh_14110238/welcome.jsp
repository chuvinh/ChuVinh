<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>   
<HEAD><TITLE>Welcome</TITLE></HEAD>  
<BODY>
<br><br><br><br>
<table align="center" style="border:1px solid #000000;">
<%
if(session.getAttribute("userName")!=null && session.getAttribute("userName")!="")
{
String user = session.getAttribute("userName").toString();
%>
<tr><td align="center"><h1>Welcome <b><%= user%></b></h1></td></tr>
<%
}
%>
</table>
</body>
<html>


