package com.soldesk.team2.contents;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.soldesk.common.main.DBManager;
import com.soldesk.common.main.MRManager;

public class ContentsDAO {
	private static final ContentsDAO CDAO = new ContentsDAO();

	public ContentsDAO() {
		// TODO Auto-generated constructor stub
	}

	public static ContentsDAO getCdao() {
		return CDAO;
	}

	public void createContents(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		MultipartRequest mr = null;
		try {
			mr = MRManager.mrSettings(request, response, "team2/img");
			
			con = DBManager.connect();
			
			String sc_category = mr.getParameter("sc_category");
			String sc_title = mr.getParameter("sc_title");
			String sc_teacher = mr.getParameter("sc_teacher");
			String sc_schedule_start = mr.getParameter("sc_schedule_start");
			String sc_schedule_finish = mr.getParameter("sc_schedule_finish");
			String sc_week = mr.getParameter("sc_week");
			
			String sc_HH = mr.getParameter("sc_HH");
			int sc_HH2 = Integer.parseInt(sc_HH);
			String sc_mm = mr.getParameter("sc_mm");
			int sc_mm2 = Integer.parseInt(sc_mm);
			String sc_time = String.format("%02d%02d", sc_HH, sc_mm);
			
			int sc_capacity = Integer.parseInt(mr.getParameter("sc_capacity"));
			
			String sql = "insert into SOLDESK_contents values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			
			if (pstmt.executeUpdate() == 1) {
				// contents 등록 성공
			} else {
				// contents 등록 실패
			}
			
		} catch (Exception e) {
			// contents 등록 실패
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
		public void delete(HttpServletRequest request, HttpServletResponse response) {
			Connection con = null;
			PreparedStatement pstmt = null;
			try {
				// 연결
				con = DBManager.connect();

				
				String sc_title = request.getParameter("sc_title");
				
				String sql = "delete from soldesk_contents "
							+ "where sc_title=?";

				pstmt = con.prepareStatement(sql);

				pstmt.setString(1, sc_title);

				if (pstmt.executeUpdate() == 1) {
					request.setAttribute("r", "삭제 성공");
				} else {
					request.setAttribute("r", "삭제 실패");
				}

			} catch (Exception e) {
				request.setAttribute("r", "삭제 실패");
			} finally {
				DBManager.close(con, pstmt, null);
			}
			
			
	}
}
