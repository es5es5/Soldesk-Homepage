package com.soldesk.team3.menu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.team3.home.DBManager;

public class MenuDAO {
	
	private static final MenuDAO MDAO = new MenuDAO();

	private MenuDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static MenuDAO getMdao() {
		return MDAO;
	}
	
	public void createMainMenu(HttpServletRequest request,HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();
			String sm_name = request.getParameter("sm_name");
			sm_name = sm_name.replace("\n", "<br>");
			pstmt = con.prepareStatement("insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval,?)");
			pstmt.setString(1, sm_name);
			if(pstmt.executeUpdate()==1) {
				request.setAttribute("r", "등록성공");
			} else {
				request.setAttribute("r", "등록실패");
			}
		} catch (Exception e) {
			request.setAttribute("r", "DB오류");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public void getMainMenu(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from soldesk_mainMenu order by sm_no");
			rs = pstmt.executeQuery();
			MainMenu mm = null;
			ArrayList<MainMenu> mms = new ArrayList<>();
			while (rs.next()) {
				mm = new MainMenu(rs.getInt("sm_no"), rs.getString("sm_name"), getSubMenu(rs.getInt("sm_no"), request, response));
				mms.add(mm);
			}
			request.setAttribute("mms", mms);
		} catch (Exception e) {
			request.setAttribute("r", "DB오류");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public void deleteMainMenu(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();
			int sm_no = Integer.parseInt(request.getParameter("sm_no"));
			pstmt = con.prepareStatement("delete from soldesk_mainMenu where sm_no=?");
			if(pstmt.executeUpdate()==1) {
				request.setAttribute("r", "삭제 성공");
			} else {
				request.setAttribute("r", "삭제 실패");
			}
		} catch (Exception e) {
			request.setAttribute("r", "DB오류");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public void createSubMenu(HttpServletRequest request,HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();
			String ss_name = request.getParameter("ss_name");
			int ss_mainMenuNo = Integer.parseInt(request.getParameter("ss_mainMenuNo")); 
			ss_name = ss_name.replace("\n", "<br>");
			int ss_type = Integer.parseInt(request.getParameter("ss_type"));
			pstmt = con.prepareStatement("insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,?,?,?)");
			pstmt.setString(1, ss_name);
			pstmt.setInt(2, ss_mainMenuNo);
			pstmt.setInt(3, ss_type);
			if(pstmt.executeUpdate()==1) {
				request.setAttribute("r", "등록성공");
			} else {
				request.setAttribute("r", "등록실패");
			}
		} catch (Exception e) {
			request.setAttribute("r", "DB오류");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	private ArrayList<SubMenu> getSubMenu(int ss_mainMenuNo,HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from soldesk_subMenu where ss_mainMenuNo=? order by ss_no");
			pstmt.setInt(1, ss_mainMenuNo);
			rs = pstmt.executeQuery();
			SubMenu sm = null;
			ArrayList<SubMenu> sms = new ArrayList<>();
			while (rs.next()) {
				sm = new SubMenu(rs.getInt("ss_no"), rs.getString("ss_name"), rs.getInt("ss_mainMenuNo"), rs.getInt("ss_type"));
				sms.add(sm);
			}
			if(sms.isEmpty()) {
				sms.add(null);
			}
			return sms;
		} catch (Exception e) {
			e.printStackTrace();
			ArrayList<SubMenu> sms = new ArrayList<>();
			sms.add(null);
			return sms;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public void deleteSubMenu(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();
			int ss_no = Integer.parseInt(request.getParameter("sm_no"));
			pstmt = con.prepareStatement("delete from soldesk_mainMenu where sm_no=?");
			if(pstmt.executeUpdate()==1) {
				request.setAttribute("r", "삭제 성공");
			} else {
				request.setAttribute("r", "삭제 실패");
			}
		} catch (Exception e) {
			request.setAttribute("r", "DB오류");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
}
