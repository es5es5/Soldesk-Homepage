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
			String sc_title = mr.getParameter("sc_title");
			String sc_category = mr.getParameter("sc_category");
			String sc_teacher = mr.getParameter("sc_teacher");
			String sc_time = String.format("%s%02d%02d", sc_HH, sc_mm);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
	}
}
