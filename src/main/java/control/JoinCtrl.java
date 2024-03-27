package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;


@WebServlet("/JoinCtrl.do")
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 처리
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
				
				// 폼 데이터 받아서 자바빈에 세팅
				String id = request.getParameter("id");
				String password = request.getParameter("password");
				String pass2 = request.getParameter("pass2");
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				Date birth = Date.valueOf(request.getParameter("birth")); // birth 자리에 date 써서 오류였음..
				int gender = (request.getParameter("male") != null)?1:2;
				int agr1 = (request.getParameter("agr1") == null)?0:1;
				int agr2 = (request.getParameter("agr2") == null)?0:1;
				int agr3 = (request.getParameter("agr3") == null)?0:1;
				int agr4 = (request.getParameter("agr4") == null)?0:1;
				int agr5 = (request.getParameter("agr5") == null)?0:1;
				
				MemberDTO mem = new MemberDTO();
				mem.setId(id);
				mem.setPassword(password);
				mem.setPass2(pass2);
				mem.setName(name);
				mem.setPhone(phone);
				mem.setEmail(email);
				mem.setBirth(birth);
				mem.setGender(gender);
				mem.setAgr1(agr1);
				mem.setAgr2(agr2);
				mem.setAgr3(agr3);
				mem.setAgr4(agr4);
				mem.setAgr5(agr5);
				
				/* 메서드 사용 */
				// 1. 아이디 중복 확인 메서드 사용
				MemberDAO mdao = new MemberDAO();
				int duplicId = mdao.isIdDuplicate(id);
				// 경로 관련 공통 변수 선언
				String home = request.getContextPath(); // Context Path: /Yes24
				// 중복 아이디 확인 후 알림 메시지
				if(duplicId != 0) {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('이미 사용하고 있는 아이디입니다.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
					writer.close();
				}
				
				// 2. 이메일 중복 확인 메서드 사용
				int duplicEmail = mdao.isEmailDuplicate(email);
				// 중복 이메일 확인 후 알림 메시지
				if(duplicEmail != 0) {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('이미 사용하고 있는 이메일입니다.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
					writer.close();
				}
				
				// 3. 회원가입 메서드 사용 
				int check = mdao.addMember(mem);
				// 처리 후 페이지 이동
				if(check != 0) {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('가입되었습니다.'); location.href='"+home+"/index.jsp"+"';</script>"); 
					writer.close();
				}else {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('회원 가입에 실패하였습니다.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
					writer.close();
				}

		
	}	

}
