<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%
        Date today=new Date();
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        String todayF = fm.format(today);
        out.println("오늘 날짜: "+todayF);
%>

    <h2>hello</h2>
</body>
</html>
