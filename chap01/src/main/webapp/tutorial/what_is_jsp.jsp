<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># JSP</h3>
	
	<ul>
		<li>Java server Pages(JSP)</li>
		<li>���� �� �������� �����ϱ� ���� Java API</li>
		<li>HTML�ȿ� �ڹ� �ڵ带 Ȱ���Ͽ� ��Ȳ�� ���� ���ϴ� �� �������� ���� �� �ִ�</li>
	</ul>
	
	<h3># Wep Server(Apache)</h3>
	<ul>
		<li>��û�� ���� URI�� �ش��ϴ� �˸��� �ڿ��� �����ϴ� ���α׷�</li>
		<li>.html ������ ��û -> .html ������ ����</li>
		<li>�׸� ������ ��û -> �׸� ������ ����</li>
		<li>���� ������ ó��</li>
	</ul>

	<h3># Wep Application Server(Apache-Tomcat)</h3>
	<ul>
		<li>.jsp ������ ��û -> Java �ؼ� �� ���� -> .html ���� ���� -> ����</li>
		<li>�ܼ� ������ �ƴ� ��Ȳ�� ���� ��ȭ�ϴ� ���� ������ ó���� ����Ѵ�</li>
		<li>Apacht-Tomcat���� Tomcat�� JSP�� �ؼ��� ����ϴ� ���α׷��̴�</li>
	</ul>
	
	<%-- JSP �ּ�--%>
	
	<%-- JSP script --%>
	
	<%-- 
		<%	%> : �ش� ���� ���ο��� �ڹ� �ڵ鸣 ����� �� �ִ� (�޼��� ������ ����)
		<%= %> : �ڹٿ� �ִ� ���� HTML�� ����� �� �ִ� (out.print�� �����)
		<%! %> : �޼��带 ������ �� �ִ� (Ŭ���� ������ �ν��Ͻ� ����)
		<%@ %> : ���� �������� ������ �� �ִ�
	--%>
	
	<%
		String str = "Hello, JSP! ";
		String firstName = "Smith";
	
		for (int i = 0; i < 10; ++i) {
			System.out.println(str + i);
		}
				
		//�ڹٿ��� ���������� ���� ������ �� �ִ�
		// 
		out.print("<div>" + str + "</div>"); // �ڹٿ��� �� �������� ���� ������ �� �ִ�
		out.println(rabbit());
	%>
	
	<%!
		// <pre>
		private String rabbit() {
			return "<pre>"
					+ "/)/)/\n"
					+ "( ..)\n"
					+ "(  >&</pre>";
		}
	%>
	
	<%
		out.print("<div id=\"" + firstName + "\">" + firstName + "</div>");
	%>
	
	<div id="<%=firstName%>"><%=firstName%></div>
	
	<h3># .JSP ������ ó�� ����</h3>
	
	<ol>
		<li>.jsp ������ �켱 .java ���Ϸ� ��ȯ�ȴ� (1�� ������)</li>
		<li>��ȯ�� .java ������ �������Ѵ� (2�� ������)</li>
		<li>�����ϵ� ������� �� ���ؽ�Ʈ(Tomcat)�� ��ϵǾ� ������� ��û�� ��ٸ���</li>
		<li>����ڰ� ��û�ϸ� �� ���ؽ�Ʈ�� ��ϵ� ������� �����Ͽ� �����Ѵ�</li>
	</ol>
	
</body>
</html>