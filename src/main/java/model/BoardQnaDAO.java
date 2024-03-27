package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardQnaDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void dbConn() {
		try {
			// 1. 외부에서 data를 읽어들이기 위한 Context 생성
			Context initctx = new InitialContext(); // server.xml <Context> 설정과 관련
			//System.out.println("1. Context 생성 성공!!");
			// 2. 톰캣 서버에 정보를 담아놓은 곳으로 이동
			Context envctx = (Context)initctx.lookup("java:comp/env"); //lookup() 사용환경찾기
			//System.out.println("2. Context 환경생성 성공!!");
			// 3. DataSource 객체 선언 = 톰캣 server.xml에 코딩한 문자열 값
			DataSource ds = (DataSource)envctx.lookup("jdbc/pool"); //lookup() Resource찾기
			//System.out.println("3. DataSource 찾기 성공");
			// 4. DataSource를 기준으로 DB에 Connection 연결
			conn = ds.getConnection();
			System.out.println("4. DB접속 성공!!");
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
	
	
	// 2. 게시글 작성
	public void writeBoard(BoardQnaDTO bean) {
		dbConn();
		int step = 0;
		try {
			
			
			// 글추가
			String sql = "insert into board_qna values(BOARD_QNA_SEQ.nextval,?,?,?,?,?,BOARD_QNA_SEQ.nextval,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getType());
			pstmt.setString(3, bean.getTitle());
			pstmt.setString(4, bean.getContent());
			pstmt.setString(5, bean.getName());
			pstmt.setInt(6, step);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	// 글수정
	public int updateBoard(BoardQnaDTO bean) {
		dbConn();
		int result = 0;
		try {
			String sql = "UPDATE board_qna SET title = ?, content = ?, type = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getType());
			pstmt.setString(2, bean.getTitle());
			pstmt.setString(3, bean.getContent());
			
			result = pstmt.executeUpdate();
			
			close(pstmt,conn);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 글삭제
	public int deleteBoard(BoardQnaDTO bean) {
		dbConn();
		int result = 0;
		int step = 1;
		try {
			
			
			
			String sql = "DELETE FROM board_qna WHERE num = ? AND id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getNum());
			pstmt.setString(2, bean.getId());
			
			result = pstmt.executeUpdate();
			if(result == 1) {
				sql = "DELETE FROM board_qna WHERE ref = ? AND step = ?";
				pstmt.setInt(1, bean.getNum());
				pstmt.setInt(2, step);
				pstmt.executeUpdate();
				
			}
			close(pstmt,conn);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 글 모두 조회
	public ArrayList<BoardQnaDTO> getAllBoard(String id) {
		ArrayList<BoardQnaDTO> list = new ArrayList<>();
		dbConn();
		try {
			String sql = "SELECT * FROM board_qna WHERE id = ? AND step = 0";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardQnaDTO bean = new BoardQnaDTO();
				bean.setNum(rs.getInt("num"));
				bean.setId(rs.getString("id"));
				bean.setType(rs.getString("type"));
				bean.setTitle(rs.getString("title"));
				bean.setContent(rs.getString("content"));
				bean.setName(rs.getString("name"));
				bean.setStep(rs.getInt("step"));
				bean.setRef(rs.getInt("ref"));
				bean.setRegdate(rs.getDate("regdate"));
				
				list.add(bean);
			}
			System.out.println("문의내역 불러오기 ~" + list);
			close(rs,pstmt,conn);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//답변 불러오기
	public BoardQnaDTO getReBoard(int num) {
		BoardQnaDTO bean = null;
		dbConn();
		try {
			String sql = "SELECT * FROM board_qna WHERE ref = ? AND step = 1";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean = new BoardQnaDTO();
				bean.setNum(rs.getInt("num"));
				bean.setTitle(rs.getString("title"));
				bean.setContent(rs.getString("content"));
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setType(rs.getString("type"));
				bean.setStep(1);
				bean.setRef(num);
				bean.setRegdate(rs.getDate("regdate"));
			}
			close(rs,pstmt,conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	//답변 불러오기
	public int insertReBoard(BoardQnaDTO bean) {
		int result = 0;
		int step = 1;
		dbConn();
		try {
			System.out.println("dao : " + bean.getId() + ","+ bean.getContent() + ","+ bean.getName() + ","+ bean.getRef() + ","+ bean.getType() + ","+ bean.getTitle());
			
			
			String sql = "INSERT INTO board_qna VALUES(BOARD_QNA_SEQ.nextval,?,?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,bean.getId());
			pstmt.setString(2,bean.getType());
			pstmt.setString(3,bean.getTitle());
			pstmt.setString(4,bean.getContent());
			pstmt.setString(5,bean.getName());
			pstmt.setInt(6,bean.getRef());
			pstmt.setInt(7,step);
			result = pstmt.executeUpdate();
			
			close(pstmt,conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//답변 불러오기
	public int updateReBoard(BoardQnaDTO bean) {
		int result = 0;
		dbConn();
		try {
			
			String sql = "UPDATE board_qna SET content = ? WHERE num = ? AND step = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,bean.getContent());
			pstmt.setInt(2,bean.getNum());
			pstmt.setInt(3,bean.getStep());
			result = pstmt.executeUpdate();
			
			close(pstmt,conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	//글 삭제
	public int deleteReBoard(int num, int step) {
		System.out.print("delete : " + num + "번 글 "+ step);
		int result = 0;
		dbConn();
		try {
			String sql = "DELETE FROM board_qna WHERE num = ? AND step = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.setInt(2,step);
			result = pstmt.executeUpdate();
			close(pstmt,conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
		
	
	
	
}
