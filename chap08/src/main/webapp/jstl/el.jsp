<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap08.model.Student,java.util.ArrayList" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ArrayList<Student> stus = new ArrayList<>();

	stus.add(new Student("A123", "���ڹ�", 20, 80, 80, 80));
	stus.add(new Student("A234", "���̽�", 20, 70, 80, 80));
	stus.add(new Student("A555", "���ڹ�", 20, 80, 80, 80));
	stus.add(new Student("A611", "���ڹ�", 20, 80, 88, 80));
	stus.add(new Student("A999", "���ڹ�", 20, 90, 80, 80));
	
	pageContext.setAttribute("stus", stus);
	
	Student stu = new Student();
	
	stu.setStu_age(15);
	stu.setStu_id("STU1234");
	stu.setStu_name("�踻��");
	stu.setStu_kor(100);
	stu.setStu_eng(80);
	stu.setStu_math(70);
	
	pageContext.setAttribute("stu1", stu);
	

%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>
	
	<h3># JSP Expression Language</h3>
	
	<ul>
		<li>JSP���� ��Ʈ����Ʈ�� �Ƿ��ִ� ������ �����ϰ� ���� �� �� �ִ� ����</li>
		<li>������ ������� Javascript�� format string�� �Ȱ��� ���ܼ�
			JSP ���ο��� �浹�� �߻��Ѵ�</li>
		<li>��Ʈ����Ʈ�� ��ü�� ����ִ� ���
			�ش� ��ü�� getter�� ���� �Ӽ��� ����� �� �ִ�</li>
		<li>���� ������ ��Ʈ����Ʈ�� ���� �̸����� ��ϵǾ� �ִ� ���
			�⺻������ ���� ���� ������ ��Ʈ����Ʈ�� ����Ѵ�</li>
	</ul>
	
	<h5># EL�� ��ü�� ȣ���� ����ϴ� ���</h5>
	
	<ul>
		<li>��ü�� �׳� ����ϴ� ��� �ش� ��ü�� toString</li>
		<li>�ش� ��ü�� .�� ��� �Ӽ��� ȣ���ϸ� 
			�����δ� �ش� ��ü�� Getter �޼��带 ȣ���Ͽ� ����Ѵ�</li>
		<li>${stu1}</li>
		<!-- �����δ� getter�� ȣ���Ͽ� ����Ѵ� -->
		<li>${stu1.stu_name}</li>
		<li>${stu1.stu_kor}</li>
		<li>${stu1.stu_math}</li>
		<li>${stu1.avg}</li>
	</ul>
	
	<h5># �ݺ����� �Բ� Ȱ���Ẹ��</h5>
	<table border="1">
	<tr>
		<th>�й�</th>
		<th>�̸�</th>
		<th>����</th>
		<th>����</th>
		<th>����</th>
		<th>����</th>
	</tr>
	<core:forEach items="${stus}" var="student">
		<tr>
			<th>${student.stu_id}</th>
			<th>${student.stu_name}</th>
			<th>${student.stu_age}</th>
			<th>${student.stu_kor}</th>
			<th>${student.stu_eng}</th>
			<th>${student.stu_math}</th>
		</tr>
	</core:forEach>
	</table>
	
	<h5># EL�� ���ͳ�</h5>
	
	<ul>
		<li>����: ${123}, ${10 * 10}, ${123 + 456}</li>
		<li>�Ǽ�: ${123.1234}, ${123.1234 * 5}</li>
		<li>���ڿ�: ${'Hello!!'}, ${"���ڿ�!"}, ${"${food}"}</li>
		<li>boolean: ${true}, ${false}</li>
	</ul>
	
	<h5># EL�� ������</h5>
	
	<ul>
		<li>��� ������: +, -, *, /, %, mod</li>
		<li>�� ������: ==, !=, eq, ne, lt, gt, le, ge, �ε�ȣ��</li>
		<li>�� ������: and, or, not, &&, ||, !</li>
		<li>empty: �ش� ���� null �Ǵ� ""�� �� true</li>
	</ul>
	
	<core:set var="a" value="10"/>
	<core:set var="b" value="7"/>
	<core:set var="f" value="banana"/>
	<% pageContext.setAttribute("j", null);%>
	
	<!-- EL�� ����� ������� ����������.. 
		���������� JSP�� ���� ���� ��� ����� ������ ���� ���� -->
	<div>${a + b}, ${a - b}, ${a * b}, ${a % b}, ${a mod b}</div>
	<div>${a == b}, ${a eq b}, ${a != b}, ${a ne b},
		 ${10 < 7}, ${10 lt 7}, ${10 > 7}, ${10 gt 7}, 
		 ${10 <= 7}, ${10 le 7}, ${10 >= 7}, ${10 ge 7}</div>
	<div>${a > b and a % 2 == 0}, ${a == 10}, ${not (a == 10)}</div>
	<div>${empty f}, ${empty g}, ${empty h}, ${empty j}</div>
	<div>�ʿ��� ��� �ٱ��� ����: ${a % 10 eq 0 ? a / 10 : a / 10 + 1}</div>
	
	<core:set var="food" value="�Ľ�Ÿ"/>
	<script>
		const food = '������';
		console.log(`������ �޴��� ${food}�Դϴ�.`);
		console.log(`������ �޴��� ${'${food}'}�Դϴ�.`);
	</script>
	
</body>
</html>