<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�۾��� ������</title>
</head>
<body>

	<h3>�۾���</h3>
	
	<form action="./write" method="POST" id="writeForm">
		�� ���� : <input type="text" name="board_title" /> <br>
		�۾��� : <input type="text" name="board_writer" /> <br>
		�� ��й�ȣ : <input type="password" name="board_password" /> <br>
		<textarea name="board_content" rows="10" cols="30"></textarea>
	</form>
	
	<button typr="submit" form="writeForm">�۾���</button>
	<button>�۸��</button>

</body>
</html>