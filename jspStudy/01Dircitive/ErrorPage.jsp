<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="isErrorPage.jsp"
    trimDirectiveWhitespaces="true"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>   


<%
int myAge=Integer.parseInt(request.getParameter("age"))+10;
        out.println("10년 후 당신의 나이: " +myAge);
        %>

<%-- <%
try{
        int myAge=Integer.parseInt(request.getParameter("age"))+10;
        out.println("10년 후 당신의 나이: " +myAge);
}catch(Exception e){
    out.println("예외처리:매개변수 age가 null");
%> --%>

<h1>fefefefe</h1>

<%-- <%
}
%> --%>

<h1>fefefefe</h1>

</body>
</html>