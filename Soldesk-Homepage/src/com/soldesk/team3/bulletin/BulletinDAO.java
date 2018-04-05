package com.soldesk.team3.bulletin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soldesk.team3.home.DBManager;

public class BulletinDAO {
	
	private ArrayList<BulletinList> lists;
	
	private static final BulletinDAO WNDAO = new BulletinDAO();
	
	public BulletinDAO() {
		// TODO Auto-generated constructor stub
	}

	public static BulletinDAO getWndao() {
		return WNDAO;
	}

	public void getAllLists(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();
			request.setCharacterEncoding("euc-kr");
			
			String sql = "select * " + 
					"from write_notice " +
					"order by wn_date";

			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			lists = new ArrayList<>();
			BulletinList wn = null;
			while (rs.next()) {
				wn = new BulletinList();
				wn.setWn_no(rs.getInt("wn_no"));
				wn.setWn_title(rs.getString("wn_title"));
				wn.setWn_txt(rs.getString("wn_txt"));
				wn.setWn_date(rs.getDate("wn_date"));
				lists.add(wn);
			}

			if (lists.size() == 0) {
				request.setAttribute("r", "없음");
				lists.add(null);
				lists.add(null);
				lists.add(null);
				lists.add(null);
			}

			//HttpSession hs = request.getSession();
			//hs.setAttribute("lists", lists);
			//request.setAttribute("lists", lists);
			
		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("r", "DB서버오류");

			lists = new ArrayList<>();
			lists.add(null);
			lists.add(null);
			lists.add(null);
			lists.add(null);
		
			HttpSession hs = request.getSession();
			hs.setAttribute("lists", null);
			
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();
			
			String wn_txt = request.getParameter("wn_txt");
			String wn_title = request.getParameter("wn_title");
			wn_txt = wn_txt.replace("\n", "<br>");
			
			String sql = "insert into write_notice values(" 
					+ "write_notice_seq.nextval, ?, ?, sysdate)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, wn_title);
			pstmt.setString(2, wn_txt);
			
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "글쓰기 성공");
			} else {
				request.setAttribute("r", "글쓰기 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "글쓰기 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			// 연결
			con = DBManager.connect();

			
			int wn_no = Integer.parseInt(request.getParameter("wn_no"));
			
			String sql = "delete from write_notice "
						+ "where wn_no=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, wn_no);

			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "삭제 성공!");
			} else {
				request.setAttribute("r", "삭제 실패");
			}

		} catch (Exception e) {
			request.setAttribute("r", "실패!!");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public void update(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			// 연결
			con = DBManager.connect();

			String wn_txt = request.getParameter("wn_txt");
			String wn_title = request.getParameter("wn_title");
			wn_txt = wn_txt.replace("\n", "<br>");
			wn_txt = wn_txt.replace(" ", "&nbsp;");
			
			int wn_no = Integer.parseInt(request.getParameter("wn_no"));
			
			String sql = "update write_notice "
						+ "set wn_txt =?, wn_title=? "
						+ "where wn_no=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, wn_txt);
			pstmt.setString(2, wn_title);
			pstmt.setInt(3, wn_no);

			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "글쓰기 성공!");
			} else {
				request.setAttribute("r", "글쓰기 실패");
			}

		} catch (Exception e) {
			request.setAttribute("r", "실패!!");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public void getDetailNotice(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();
			int wn_no = Integer.parseInt(request.getParameter("wn_no"));
			pstmt = con.prepareStatement("select * from WRITE_NOTICE where wn_no=?");
			pstmt.setInt(1, wn_no);
			rs = pstmt.executeQuery();
			rs.next();
			BulletinList wn = new BulletinList(rs.getInt("wn_no"), rs.getString("wn_title"), rs.getString("wn_txt"), rs.getDate("wn_date"));
			request.setAttribute("notice", wn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public void paging(int page, HttpServletRequest request, HttpServletResponse response) {
		
		double cnt = 10;
		int itemSize = lists.size();
		int pageCount = (int) Math.ceil(itemSize / cnt);
		request.setAttribute("pageCount", pageCount);

		int start = itemSize - ((int) cnt * (page - 1));
		int end = (page == pageCount) ? -1 : start - ((int) cnt + 1);

		ArrayList<BulletinList> items2 = new ArrayList<>();

		for (int i = start - 1; i > end; i--) {
			items2.add(lists.get(i));
		}

		request.setAttribute("curPageNo", page);
		request.setAttribute("lists", items2);
	}
}
