<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h3># �䱸����</h3>
	
	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϰ� �α��� ��ư�� ���� �α����� �� �� �ִ�</li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ�ȴ�
			(���̵� �ߺ��� üũ�ؾ� �ϰ�, ���Ե� ������ application ������ ����Ѵ�)</li>			
		<li>�α��ο� ������ ����� ������ �����Ǵ� ���� �α����� ����ؼ� �����Ǿ�� �Ѵ�</li>
		<li>�α��� �� ����� ���ο� �޸� ����� �� �ְ�, ������ ����ߴ� �޸�鵵 �� �� �ִ�</li>
		<li>������ ����������� ��� ȸ������ �� �޸� ������� �������</li>
		<li>������ ������ ������ ������ ��� ������ quiz ������ ���� ��
			(������ ����ϰ� �ʹٸ� URL�� quiz�� ���� ��)</li>
	</ul>
	
	
	<button onclick="location.href='/chap04/quiz/loginForm.jsp';">�α��� �Ϸ�����</button>
	
	<button onclick="location.href='/chap04/quiz/registerForm.jsp';">ȸ������</button>
	
	<h3>��� ��Ʈ����Ʈ ����</h3>
	
	<ul>
	<%
	// scope.getAttributeNames()
	// : �ش� ������ ��� ��Ʈ����Ʈ �̸����� ���� �� �ִ� ��ü ��ȯ
		java.util.Enumeration<String> names = application.getAttributeNames();
	
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			out.print(String.format("<li>%s=%s</li>",
					name, application.getAttribute(name)));
		}
	%>
	</ul>
	
	<script>
		<% 
			if (request.getParameter("error") != null) {
				if (request.getParameter("dup") != null) {
					out.print("alert('�̹� ������� ���̵��Դϴ�')");
				} else {
					out.print("alert('ȸ������ ����')");
				}
			}
		%>
		
	</script>
	
</body>
</html>


