package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void dbConn() {
		try {
			// 1. �ܺο��� data�� �о���̱� ���� Context ����
			Context initctx = new InitialContext(); // server.xml <Context> ������ ����
			System.out.println("1. Context ���� ����!!");
			// 2. ��Ĺ ������ ������ ��Ƴ��� ������ �̵�
			Context envctx = (Context)initctx.lookup("java:comp/env"); //lookup() ���ȯ��ã��
			System.out.println("2. Context ȯ����� ����!!");
			// 3. DataSource ��ü ���� = ��Ĺ server.xml�� �ڵ��� ���ڿ� ��
			DataSource ds = (DataSource)envctx.lookup("jdbc/pool"); //lookup() Resourceã��
			System.out.println("3. DataSource ã�� ����");
			// 4. DataSource�� �������� DB�� Connection ����
			conn = ds.getConnection();
			System.out.println("4. DB���� ����!!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void close(PreparedStatement pstmt, Connection conn) {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	public void close(ResultSet rs,PreparedStatement pstmt, Connection conn) {
		if(rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	// 2. �ߺ� ���̵� ��ȸ �޼���
		public int isIdDuplicate(String id) {
			int duplicId = 0; // int�� ������ �ʱⰪ�� 0���� ���õǾ�� ��!
			try {
				dbConn();
				String sql = "select * from member where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					duplicId = 1;
				}else {
					duplicId = 0;
				}
				pstmt.close();
				rs.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return duplicId;
		} // end of isIdDuplicate

		// 3. �ߺ� �̸��� ��ȸ �޼���
		public int isEmailDuplicate(String email) {
			int duplicEmail = 0; // int�� ������ �ʱⰪ�� 0���� ���õǾ�� ��!
			try {
				dbConn();
				String sql = "select * from member where email=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, email);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					duplicEmail = 1;
				}else {
					duplicEmail = 0;
				}
				pstmt.close();
				rs.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return duplicEmail;
		} // end of isEmailDuplicate
		
		// 4. ȸ�� ���� �޼��� = ����ڰ� ���� �Է��� ���� �����͸� DB�� ���ʴ�� �ִ� �޼���
		public int addMember(MemberDTO mem) {
			int check = 0;
			try {
				dbConn();
				String sql = "insert into member(id, password, regdate, name, phone, email, birth, gender, agr1, agr2, agr3, agr4, agr5) values(?,?,sysdate,?,?,?,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mem.getId());
				pstmt.setString(2, mem.getPassword());
				pstmt.setString(3, mem.getName());
				pstmt.setString(4, mem.getPhone());
				pstmt.setString(5, mem.getEmail());
				pstmt.setDate(6, mem.getBirth());
				pstmt.setInt(7, mem.getGender());
				pstmt.setInt(8, mem.getAgr1());
				pstmt.setInt(9, mem.getAgr2());
				pstmt.setInt(10, mem.getAgr3());
				pstmt.setInt(11, mem.getAgr4());
				pstmt.setInt(12, mem.getAgr5());
				check = pstmt.executeUpdate();
				
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return check;
		} // end of addMember
		
		// 5. �α���
			public int getMember(String id, String password) {
				int result = 0;
				dbConn();
				try {
					String sql = "select count(*) from member where id = ? and password = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					pstmt.setString(2, password);
					rs = pstmt.executeQuery();
					if(rs.next()) {
						result = rs.getInt(1);
					}
					rs.close();
					pstmt.close();
					conn.close();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return result;
			} // end of getMember
			
		// 6. �α׾ƿ�
			

		// 7. �̸���������(���۾���)
		public String getName(String id) {
			dbConn();
			String name = "";
			try {
				String sql = "select name from member where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					name = rs.getString(1);
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return name;
		} //end of getName

	
	
	
}
