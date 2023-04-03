<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //선언부(변수, 메서드)
        public int add(int num1, int num2){
            return num1+num2;
        }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>   
<% //Scriptlet 스크립틀릿(javacode)
        int result=add(10,30);
%>
<p>덧셈1 : <%=result %></p> <!--스크립트 요소 표현식-->
<p> 덧셈2 : <%=add(20,50) %></p>

<font size='9'>
            <!-- html 주석 --><br>
            <%-- jsp주석 --%><br>
</font>


</body>
</html>