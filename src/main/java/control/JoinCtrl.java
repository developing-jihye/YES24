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
		
		// �ѱ� ó��
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
				
				// �� ������ �޾Ƽ� �ڹٺ� ����
				String id = request.getParameter("id");
				String password = request.getParameter("password");
				String pass2 = request.getParameter("pass2");
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				Date birth = Date.valueOf(request.getParameter("birth")); // birth �ڸ��� date �Ἥ ��������..
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
				
				/* �޼��� ��� */
				// 1. ���̵� �ߺ� Ȯ�� �޼��� ���
				MemberDAO mdao = new MemberDAO();
				int duplicId = mdao.isIdDuplicate(id);
				// ��� ���� ���� ���� ����
				String home = request.getContextPath(); // Context Path: /Yes24
				// �ߺ� ���̵� Ȯ�� �� �˸� �޽���
				if(duplicId != 0) {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('�̹� ����ϰ� �ִ� ���̵��Դϴ�.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
					writer.close();
				}
				
				// 2. �̸��� �ߺ� Ȯ�� �޼��� ���
				int duplicEmail = mdao.isEmailDuplicate(email);
				// �ߺ� �̸��� Ȯ�� �� �˸� �޽���
				if(duplicEmail != 0) {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('�̹� ����ϰ� �ִ� �̸����Դϴ�.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
					writer.close();
				}
				
				// 3. ȸ������ �޼��� ��� 
				int check = mdao.addMember(mem);
				// ó�� �� ������ �̵�
				if(check != 0) {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('���ԵǾ����ϴ�.'); location.href='"+home+"/index.jsp"+"';</script>"); 
					writer.close();
				}else {
					PrintWriter writer = response.getWriter();
					writer.println("<script>alert('ȸ�� ���Կ� �����Ͽ����ϴ�.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
					writer.close();
				}

		
	}	

}
