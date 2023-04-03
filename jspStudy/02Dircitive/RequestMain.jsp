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
            <h2>클라이언트와 서버 정보</h2>
            <a href="./RequestInfo.jsp?eng=hello&kor=안녕">
                  get method
            </a>
            <br>
            <form action="RequestInfo.jsp" method="post">
                    Korean: <input type="text" name="kor" value="잘자."/>
                    English: <input type="text" name="eng" value="good night."/>
                    <input type="submit" value="Post method submit"/>
            </form>

            <h2>클라이언트 요청 매개 변수</h2>
            
</body>
</html>