<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	if (session.getAttribute("info") != null) {
		response.sendRedirect("/chap04/quiz/memo/main");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α����ϴ°�</title>
</head>
<body>

	<h3># �α���</h3>

	ID: <input name="id" type="text" form="form1"> <br>
	PASSWORD: <input name="pwd" type="password" form="form1"> <br>
	<button type="submit" form="form1">�α���</button>

	<!-- 
		id�Ӽ��� form�Ӽ��� Ȱ����
		form �±� �ۿ� �ִ� ��ҵ��� �� ���� �Ҽ����� ������ �� �ִ� 
	-->
	<form id="form1" action="/chap04/quiz/login" method="POST"></form>
</body>
</html>