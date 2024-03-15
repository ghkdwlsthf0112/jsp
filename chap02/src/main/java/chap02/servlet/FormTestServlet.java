package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formTest")
public class FormTestServlet extends HttpServlet{
	
	// doGet(): GET방식 요청을 받으면 호출되는 메세지
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// GET방식 요청의 암묵적인 뜻 
		System.out.println("GET방식 요청이 왔습니다");
		
		resp.getWriter().append("<p>요청은 GET방식이었습니다.</p>");
	}
	
	// doPost(): POST방식 요청을 받으면 호출되는 메세지
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// POST방식 요청의 암묵적인 뜻
		System.out.println("POST방식 요청이 왔습니다");
		
		resp.getWriter().append("<p>요청은 POST방식이었습니다.</p>");
	}
	
	// service() : 요청 방식을 구분하지 않고 요청을 받으면 무조건 호출되는 메세지
	// service 메서드의 기본 동작은 요청방식을 보고 doget, dopost등을 호출해주는 것
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Service가 먼저 호출되었습니다");
		super.service(req, resp);
		
		// System.out.println(req);		
		
		// form으로 실어보낸 데이터는 request.getParameter(name)으로 꺼낼 수 있다
		System.out.println(req.getParameter("user-name"));
		System.out.println(req.getParameter("user-age"));
		System.out.println(req.getParameter("user-password"));
		System.out.println(req.getParameter("user-math"));
		System.out.println(req.getParameter("my-color"));
		
		resp.getWriter().append("<h1>OK!</h1>");
		
		// 요청 방식은 요청 객체에 실려있다
		if (req.getMethod().equals("GET")) {
			doGet(req, resp);
		}else if (req.getMethod().equals("POST")) {
			doPost(req, resp);
		}
	}
}
