<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap08.daao.EmployeeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String searchQuery = request.getParameter("searchQuery");
	String searchType = request.getParameter("searchType");
	
	System.out.println(searchQuery);
	System.out.println(searchType);
	
	chap08.daao.EmployeeDAO dao = new chap08.daao.EmployeeDAO();
	
	request.setAttribute("emps", dao.search(searchType, searchQuery));
%>   
<%-- forward() --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1># 검색 결과 페이지</h1>
	
	<c:forEach items="${emps}">
		
	</c:forEach>

</body>
</html>