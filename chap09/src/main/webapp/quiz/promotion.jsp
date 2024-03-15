<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>광고</title>
</head>
<body>

	<c:url value="/assets/img/son.jpg" var="sonImage"/>

	<img src="${sonImage}" alt="손흥민" width="500"> <br>
	
	<div>
		<input id="nm_pm_chk" name="nm_pm" type="checkbox" /> 30초 동안 창 닫기
	<div/>
	
	<script type="text/javascript">
		const nmPm = document.querySelector('#nm_pm_chk');
		
		nmPm.addEventListener('click', (e) => {
			// 체크박스 checked라는 속성을 통해 체크 여부를 판다할 수 있다
			console.log(nmPm.checked);
			
			if (nmPm.checked == true) {
				console.log('체크가 되었습니다!');
				
				// 클라이언트 측에서 직접 30초짜리 쿠키 추가
				document.cookie = "nmpm2=1; max-age=30; path=/chap09/quiz";
				window.close();
				// location.href = 'nmpm.jsp'; 서버측으로 보내서 30초짜리 쿠키 추가
			}
		});
	</script>
	
</body>
</html>