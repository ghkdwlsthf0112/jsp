<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>��ȸ �ߵ�</h3>
	
	�� ���� : <input type="text" value="${detail.board_title}" readonly/> <br>
	�۾���� : <input type="text" value="${detail.board_writer}" readonly/> <br>
	��ȸ�� : ${detail.view_count} �ۼ��� : ${detail.write_date} <br />
   <textarea cols="30" rows="10">${detail.board_content} </textarea> <br />

</body>
</html>