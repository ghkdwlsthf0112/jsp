package chap04;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/quiz/memo/*")
public class MemoServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		ServletContext application = req.getServletContext();
		
		
		String uri = req.getRequestURI();
		String root = "/chap04/quiz/memo/";
		String cmd = uri.substring(root.length());
		
		// cmd에 맞춰서 포워당할 페이지를 변경
		if (cmd.equals("main")) {
			// forward시에는 webapp밑의 경로를 사용해야 한다
			req.getRequestDispatcher("/quiz/memoView/index.jsp").forward(req, resp);
		} else if (cmd.equals("add")) {
			String memo = req.getParameter("memo");
			
			HttpSession session = req.getSession();
			
			// 로그인 중인 사용자릐 정보를 꺼낸다ㅣ
			Map<String, Object> infoMap = (Map)session.getAttribute("info");
			
			System.out.println();
			System.out.println();
			
			// 이미 존재하는 메모 리스트가 있으면 새 메모리스트를 등록한다
			// 있으면 기존에 존대하더 리스트를 꺼내서 메모를 추가한다
			if (infoMap.get("memoList") == null) {
				List<String> newMemoList = new ArrayList<>();
				newMemoList.add(memo);
				infoMap.put("memoList", newMemoList);
			} else {
				List<String> memos = (List<String>) infoMap.get("memoList");
				memos.add(memo);
			}
			
			req.getRequestDispatcher("/quiz/memoView/index.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("/chap04/quiz/index.jsp");
		}
	}
	
}
