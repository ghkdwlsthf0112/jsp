package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.util.UriParser;
import chap07.webprocess.BreadAddFormWebProcess;
import chap07.webprocess.BreadAddWebProcess;
import chap07.webprocess.BreadDeleteFormWebProcess;
import chap07.webprocess.BreadDeleteWebProcess;
import chap07.webprocess.BreadListWebProcess;
import chap07.webprocess.DBTestWebProcess;
import chap07.webprocess.IndexWebProcess;
import chap07.webprocess.WebProcess;

public class ApplicationServlet extends HttpServlet {
	
	static Map<String, WebProcess> uriMapping = new HashMap<>();
	
	static {
		// (1) 전달받은 URI(cmd)에 따라 알맞은 처리를 꺼내줄 수 있는 
		//
		uriMapping.put("GET::/", new IndexWebProcess());
		uriMapping.put("GET::/dbtest/list", new DBTestWebProcess());
		uriMapping.put("GET::/dbtest/bread/list", new BreadListWebProcess());
		uriMapping.put("GET::/dbtest/bread/add", new BreadAddFormWebProcess());
		uriMapping.put("POST::/dbtest/bread/add", new BreadAddWebProcess());
		uriMapping.put("GET::/dbtest/bread/delete", new BreadDeleteFormWebProcess());
		uriMapping.put("POST::/dbtest/bread/delete", new BreadDeleteWebProcess());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String cmd = UriParser.getCmd(req);
		
		// 1. uri를 문자열 형태로 전달받는다
		// 2. 해당 uri에 알맞은 처리를 한다(DB작업 등..)
		// 3. 내가 다음으로 가야할 뷰 페이지로 포워드 하거나 리다이렉트한다
		
		String nextPage = uriMapping.get(cmd).process(req);
		
		if (nextPage.startsWith("redirect::")) {
			resp.sendRedirect(nextPage.substring("redirect::".length()));
		} else {
			req.getRequestDispatcher(nextPage).forward(req, resp);
		}
		
		// System.out.println(cmd);
		// if문을 사용할 때의 문제점 - 끝도 없이 늘어나기 때문에 소스코드가 길어져서 유지보수가 힘들다
		// 결론 : 엄청나게 늘어날 수 있는 if문은 제거해야 한다 -> 인터페이스와 Map을 활용
//		if(cmd.equals("/")) {
//			req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
//		} else if (cmd.equals("/dbtest/list")) {
//			// DB에서 값을 꺼낸 후
//			try {
//				Class.forName("oracle.jdbc.driver.OracleDriver");
//			} catch (ClassNotFoundException e) {
//				e.printStackTrace();
//			}
//			
//			try (
//					Connection conn =DriverManager.getConnection(
//					"jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
//					PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM employees");
//					ResultSet rs = pstmt.executeQuery();
//			){
//				List<EmployeeDTO> employees = new ArrayList<>();
//				
//				while (rs.next()) {
//					employees.add(new EmployeeDTO(
//							rs.getInt("employee_id"),
//							rs.getString("first_name"),
//							rs.getString ("last_name"),
//							rs.getDouble("salary"),
//							rs.getDouble("commission_pct"),
//							rs.getDate("hire_date"),
//							rs.getString("job_id"),
//							rs.getInt("manager_id"),
//							rs.getInt("department_id")
//							));
//				}
//				req.setAttribute("employees", employees);
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			// 포어딩
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/list.jsp").forward(req, resp);
//		} else if(cmd.equals("/dbtest/bread/list")) {
//			req.getRequestDispatcher("/WEB-INF/views/bread/list.jsp").forward(req, resp);
//		}
	}

}
