<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	// ��Ű�� �׻� ��û�� ���ԵǾ� �����Ѵ� (����, �����ΰ� path�� �´� ��쿡��)
	// ���ϴ� ��Ű �ϳ��� �޴� �޼���� �⺻������ �������� �ʴ´�
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (Cookie cookie : cookies) {
			String cname = cookie.getName();
			
			if (cname.equals("age")) {
				cookie.setMaxAge(300); // ���� ����Ⱓ�� �����̴� ��Ű�� 5������ ����
				cookie.setValue("3-7");
				
				// ��û���κ��� ���޹��� ��Ű���� path������ ����
				// ������ ��� path�� �״�� ����� �Ұ����ϴ�
				System.out.println("age path:" + cookie.getPath());
				response.addCookie(cookie);
			} else if (cname.equals("fav")) {
				// ��Ȯ�ϰ� ���� ��Ű�� �����ϱ� ���ؼ��� name�Ӹ� �ƴ϶�
				// path���� ��ġ���Ѿ� �Ѵ� (path�� �ٸ��� ��Ű�� �ν��Ѵ�)
				cookie.setMaxAge(-1); // ������ ������ �ٲٸ� �ش� ��Ű�� �������� ����
				cookie.setPath("/chap09");
				response.addCookie(cookie);
			}
		}
	}
	
	response.sendRedirect(request.getContextPath() + "/cookie/index.jsp");
%>