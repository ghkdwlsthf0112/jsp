<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Add New Bread!!!!</title>
</head>
<body>

	<h3># 새 빵 추가하기</h3>
	
	<form action="./add" method="POST">
		이름: <input name="bread_name" type="text"> <br>
		가격: <input name="bread_price" type="number" min="0" step="100" value="1000"> <br>
		<input type="submit" value="추가하기" />
	</form>
	
</body>
</html>