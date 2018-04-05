package com.soldesk.team2.contents;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.common.main.DBManager;

public class KDHLocalContentsDAO {
	private static KDHLocalContentsDAO CDAO = new KDHLocalContentsDAO();
	private ArrayList<Contents> contents;

	public static KDHLocalContentsDAO getCDAO() {
		return CDAO;
	}

	public static void setCDAO(KDHLocalContentsDAO cDAO) {
		CDAO = cDAO;
	}

	public void paging(int page, HttpServletRequest request, HttpServletResponse response) {
		double cnt = 10;
		int itemSize = contents.size();
		int pageCount = (int) Math.ceil(itemSize / cnt);
		request.setAttribute("pageCount", pageCount);
		int start = itemSize - ((int) cnt * (page - 1)) - 1;
		ArrayList<Contents> contents2 = new ArrayList<>();
		for (int i = start; i > (page == pageCount ? -1 : start - (int) cnt + 2); i--) {
			contents2.add(contents.get(i));
		}
		request.setAttribute("contents", contents2);
	}

	public void paging(HttpServletRequest request, HttpServletResponse response) {
		int pageCount = (int) Math.ceil(contents.size() / 10.0);
		request.setAttribute("pageCount", pageCount);
		ArrayList<Contents> contents2 = new ArrayList<>();
		for (int i = contents.size() - 1; i > (1 == pageCount ? -1 : contents.size() - 11); i--) {
			contents2.add(contents.get(i));
		}
		request.setAttribute("contents", contents2);
	}

	public void getAllContents(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from SOLDESK_contents " + "order by sc_schedule_START");
			rs = pstmt.executeQuery();
			contents = new ArrayList<>();
			while (rs.next()) {
				contents.add(new Contents(rs.getString("sc_category"), rs.getString("sc_title"),
						rs.getInt("sc_teacher"), rs.getDate("sc_schedule_START"), rs.getDate("sc_schedule_FINISH"),
						rs.getInt("sc_week"), rs.getDate("sc_time_START"), rs.getDate("sc_time_FINISH"),
						rs.getInt("sc_capacity"), rs.getInt("sc_expense")));
			}
			if (contents.size() == 0) {
				request.setAttribute("r", "아무 데이터 없음");
				contents.add(null);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB서버오류");
			contents = new ArrayList<>();
			contents.add(null);
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public void getDetailContents(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from SOLDESK_contents " + "where sc_title=?");
			pstmt.setString(1, request.getParameter("sc_title"));
			rs = pstmt.executeQuery();
			if (rs.next()) {
				request.setAttribute("c",
						new Contents(rs.getString("sc_category"), rs.getString("sc_title"), rs.getInt("sc_teacher"),
								rs.getDate("sc_schedule_START"), rs.getDate("sc_schedule_FINISH"), rs.getInt("sc_week"),
								rs.getDate("sc_time_START"), rs.getDate("sc_time_FINISH"), rs.getInt("sc_capacity"),
								rs.getInt("sc_expense")));
			} else {
				request.setAttribute("r", "아무 데이터 없음");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB서버오류");
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
}
