package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardQnaDAO;
import model.BoardQnaDTO;
import model.MemberDAO;
import model.MemberDTO;


@WebServlet("/BoardListCtrl")
public class BoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		String home = request.getContextPath();
		PrintWriter out = response.getWriter();
		String id = (String)session.getAttribute("id");
		
		
		BoardQnaDAO dao = new BoardQnaDAO();
		ArrayList<BoardQnaDTO> list = dao.getAllBoard(id);
		
		if(list.size() > 0) {
			request.setAttribute("list", list);
			
			RequestDispatcher dis = request.getRequestDispatcher("./pages/board/boardList.jsp");
			dis.forward(request, response);
		}else {
			response.sendRedirect("./pages/board/boardList.jsp");
			//out.println("<script>alert('문의내역을 불러올 수 없습니다. 고객센터에 문의해주세요.'); location.href = 'index.jsp';</script> ");
		}
		
	}	

}
