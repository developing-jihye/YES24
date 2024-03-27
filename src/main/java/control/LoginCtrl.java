package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;


@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8;");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println(id + password);
		
		MemberDTO mdto = new MemberDTO();
		mdto.setId(id);
		mdto.setPassword(password);
		
		MemberDAO mdao = new MemberDAO();
		int result = mdao.getMember(id, password);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(60*30);
			response.sendRedirect("index.jsp");
		}else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='pages/auth/login.jsp'");
			script.println("alert('아이디, 비밀번호를 확인하세요.')");
			script.println("</script>");
		}
		
	}	
}
