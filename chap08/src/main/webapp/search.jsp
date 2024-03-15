<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� �˻��غ���</title>
</head>
<body>

	<h3># Search</h3>
	
	<ul>
		<li>�˻��� ���� ������� ��ȸ�� �� �ִ� �������� ����� ������</li>
		<li>�˻��� �� �ִ� �÷�: first_name, last_name, department_name</li>
		<li>�˻�� ���� �Է��ϰ� �˻� ��ư�� ������ ������� ��ȸ�Ǿ�� ��</li>
	</ul>
	
	<c:url value="/employee/searchResult.jsp" var="searchURL"/>
	<div>
		<form id="searchForm" action="${searchURL}" method="POST"></form>
		�˻�:
		<input id="searchQueryField" type="text" name="searchQuery" form="searchForm">
		<select  name="searchType" form="searchForm">
			<option value="first_name">�̸�</option>
			<option value="last_name">��</option>
			<option value="department_name">�μ���</option>
		</select>
	</div>
	
	<script>
		const searchQueryField = document.getElementById('searchQueryField');
		
		// HTMLForm
		const searchForm = document.getElementById('searchForm');

		// console.log(searchQueryForm);
		// console.log(searchForm);	
		
		searchQueryField.addEventListener('keydown', (e) => {
			// e.prevenDefault();
			
			// console.log(e);	
			
			if (e.keyCode === 13) {
				// console.log('���ͱⰡ ����');
				
				// ������ ����� ���ִ��� �˻縦 �ϰų� ... 
				// ���⼭ ��û�� ������ �ּҸ� �����ϰų� ...
				
				searchForm.submit();
			}
		});
	</script>
</body>
</html>