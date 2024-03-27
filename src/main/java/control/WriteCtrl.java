package control;
/* Í≤åÏãúÍ∏? ?ûë?Ñ± */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardQnaDAO;
import model.BoardQnaDTO;
import model.MemberDAO;

@WebServlet("/WriteCtrl")
public class WriteCtrl extends HttpServlet {

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
		
		// ?ù¥Î¶ÑÎ∞õÍ∏?
		MemberDAO mbean = new MemberDAO();
		String name = mbean.getName(id);
		System.out.println(name);
		
		// Í∏??ì∞Í∏?
		BoardQnaDTO bean = new BoardQnaDTO();
		bean.setId(id);
		bean.setType(request.getParameter("type"));
		bean.setTitle(request.getParameter("title"));
		bean.setContent(request.getParameter("content"));
		bean.setName(name);
		
		BoardQnaDAO bdao = new BoardQnaDAO();
		bdao.writeBoard(bean);
		
		response.sendRedirect("BoardListCtrl");
	}

}
