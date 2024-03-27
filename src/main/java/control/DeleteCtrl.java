package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardQnaDAO;
import model.BoardQnaDTO;
import model.MemberDAO;


@WebServlet("/DeleteCtrl")
public class DeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	// doGetPost
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ?ïúÍ∏?Ï≤òÎ¶¨
		request.setCharacterEncoding("utf-8");
		// Î°úÍ∑∏?ù∏ Ï≤òÎ¶¨
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		int num = Integer.parseInt(request.getParameter("num"));
		if(id == null) {
			response.sendRedirect("./pages/auth/login.jsp");
		}
		BoardQnaDAO dao = new BoardQnaDAO();
		BoardQnaDTO bean = new BoardQnaDTO();
		bean.setNum(num);
		bean.setId(id);
		System.out.println("!!num : " + num);
		int result = dao.deleteBoard(bean);
		if(result == 1) {
			response.sendRedirect("BoardListCtrl");
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('ªË¡¶ Ω«∆–'); history.go(-1);</script> ");
		}
		
		
		
		
		
	}

}
