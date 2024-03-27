package control;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/BoardRepleCtrl")
public class BoardRepleCtrl extends HttpServlet {
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
		MemberDAO mdao = new MemberDAO();
		BoardQnaDTO bean = new BoardQnaDTO();
		BoardQnaDAO dao = new BoardQnaDAO();
		String content = request.getParameter("content");
		
		
		
		String id = (String)session.getAttribute("id");
		String name = mdao.getName(id);

		String type = request.getParameter("type");
		String title = request.getParameter("title");
		//String home = request.getContextPath();
		
		int result = 0;
		
		String action = (request.getParameter("action") != null) ? request.getParameter("action") : "write"; //삭제, 수정 구분
		System.out.println(action);

		if(action.equals("del")) {
			System.out.println("삭제다");
			int num = Integer.parseInt(request.getParameter("num"));
			int step = Integer.parseInt(request.getParameter("step"));
			System.out.println("num : "+ num);
			System.out.println("step : "+ step);
			result = dao.deleteReBoard(num,step);//삭제
		}else if(action.equals("edit")) {
			System.out.println("수정이다");
			System.out.println(request.getParameter("num")+","+request.getParameter("step"));
			int num = Integer.parseInt(request.getParameter("num"));
			int step = Integer.parseInt(request.getParameter("step"));
			bean.setNum(num);
			bean.setStep(step);
			bean.setContent(content);
			result = dao.updateReBoard(bean);
		}else {
			System.out.println("답글쓰기다");
			int ref = Integer.parseInt(request.getParameter("ref"));
			bean.setId(id);
			bean.setName(name);
			bean.setContent(content);
			bean.setRef(ref);
			bean.setTitle(title);
			bean.setType(type);
			result = dao.insertReBoard(bean);//쓰기
		}
		
		if(result == 1) {
			
			response.sendRedirect("./BoardListCtrl");
			
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('실패'); history.go(-1);</script> ");
		}
		
	}	

}
