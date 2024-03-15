package board.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardDetailService implements Service{
	
	BoardDAO dao = new BoardDAO();
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		
		boolean plused = false;
		
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null) {
			for (Cookie cookie : request.getCookies()) {
				if (cookie.getName().equals("" + board_id)) {
					plused = true;
				}
			}
		}
		
		if (!plused) {
			int row = dao.plusView(board_id);
			response.addCookie(new Cookie("" + board_id, "1"));
		
			if (row < 1) {
				return "/WEB-INF/views/board/detailNotFound.jsp";
			}
		}
		
		BoardDTO detail = dao.get(board_id);
		
		if (detail != null) {
		request.setAttribute("detail", detail);
		return "/WEB-INF/views/board/detail.jsp";
		} else {
			return "/WEB-INF/views/board/detailNotFound.jsp";
		}
	}
}
