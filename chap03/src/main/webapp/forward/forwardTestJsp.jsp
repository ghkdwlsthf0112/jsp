<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	// �̷��� JSP�� ����ϸ� Servlet�� �ٸ��ٰ� ����
	
	// request.getRequestDispatcher("/forward/page1.jsp").forward(request, response);	
%>

<%-- JSP �������� forward �ϱ� --%>
<jsp:forward page="/forward/page1.jsp"/>