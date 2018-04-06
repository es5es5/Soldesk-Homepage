package com.soldesk.team2.contents;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.soldesk.common.main.DBManager;
import com.soldesk.common.main.MRManager;

public class ContentsDAO
{
	private static final ContentsDAO CDAO = new ContentsDAO();
	private ArrayList<Contents> contents;
	private ArrayList<ContentsSubstance> substance;

	public ContentsDAO()
	{
		// TODO Auto-generated constructor stub
	}

	public static ContentsDAO getCdao()
	{
		return CDAO;
	}

	public void createContents(HttpServletRequest request, HttpServletResponse response)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		MultipartRequest mr = null;
		try
		{
			mr = MRManager.mrSettings(request, response, "team2/img/contents");

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

			pstmt.setString(1, sc_category);
			pstmt.setString(2, sc_title);
			pstmt.setString(3, sc_teacher);
			pstmt.setString(4, sc_schedule_start);
			pstmt.setString(5, sc_schedule_finish);
			pstmt.setString(6, sc_week);

			if (pstmt.executeUpdate() == 1)
			{
				// contents 등록 성공
			} else
			{
				// contents 등록 실패
			}

		} catch (Exception e)
		{
			// contents 등록 실패
		} finally
		{
			DBManager.close(con, pstmt, null);
		}
	}

	public void delete(HttpServletRequest request, HttpServletResponse response)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		try
		{
			// 연결
			con = DBManager.connect();

			String sc_title = request.getParameter("sc_title");

			String sql = "delete from soldesk_contents " + "where sc_title=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, sc_title);

			if (pstmt.executeUpdate() == 1)
			{
				request.setAttribute("r", "삭제 성공");
			} else
			{
				request.setAttribute("r", "삭제 실패");
			}

		} catch (Exception e)
		{
			request.setAttribute("r", "삭제 실패");
		} finally
		{
			DBManager.close(con, pstmt, null);
		}
	}

	public void contentsPaging(int page, HttpServletRequest request, HttpServletResponse response)
	{
		double cnt = 10;
		int itemSize = contents.size();
		int pageCount = (int) Math.ceil(itemSize / cnt);
		request.setAttribute("pageCount", pageCount);
		int start = itemSize - ((int) cnt * (page - 1)) - 1;
		ArrayList<Contents> contents2 = new ArrayList<>();
		for (int i = start; i > (page == pageCount ? -1 : start - (int) cnt + 2); i--)
		{
			contents2.add(contents.get(i));
		}
		request.setAttribute("contents", contents2);
	}

	public void contentsPaging(HttpServletRequest request, HttpServletResponse response)
	{
		int pageCount = (int) Math.ceil(contents.size() / 10.0);
		request.setAttribute("pageCount", pageCount);
		ArrayList<Contents> contents2 = new ArrayList<>();
		for (int i = contents.size() - 1; i > (1 == pageCount ? -1 : contents.size() - 11); i--)
		{
			contents2.add(contents.get(i));
		}
		request.setAttribute("contents", contents2);
	}

	public void substancePaging(HttpServletRequest request, HttpServletResponse response)
	{
		int pageCount = (int) Math.ceil(substance.size() / 50.0);
		request.setAttribute("pageCount", pageCount);
		ArrayList<ContentsSubstance> substance2 = new ArrayList<>();
		for (int i = substance.size() - 1; i > (1 == pageCount ? -1 : substance.size() - 51); i--)
		{
			substance2.add(substance.get(i));
		}
		request.setAttribute("substance", substance2);
	}

	public void getAllContents(HttpServletRequest request, HttpServletResponse response)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from SOLDESK_contents " + "order by sc_schedule_START");
			rs = pstmt.executeQuery();
			contents = new ArrayList<>();
			while (rs.next())
			{
				contents.add(new Contents(rs.getInt("sc_no"), rs.getInt("sc_category"), rs.getString("sc_title"),
						rs.getInt("sc_teacher"), rs.getDate("sc_schedule_start"), rs.getDate("sc_schedule_finish"),
						rs.getInt("sc_week"), rs.getInt("sc_capacity"), rs.getInt("sc_expense")));
			}
			if (contents.size() == 0)
			{
				request.setAttribute("r", "아무 데이터 없음");
				contents.add(null);
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB서버오류");
			contents = new ArrayList<>();
			contents.add(null);
		} finally
		{
			DBManager.close(con, pstmt, rs);
		}
	}

	public void getDetailContents(HttpServletRequest request, HttpServletResponse response)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from SOLDESK_contents " + "where sc_no=?");
			pstmt.setString(1, request.getParameter("sc_no"));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				Contents c = new Contents(rs.getInt("sc_no"), rs.getInt("sc_category"), rs.getString("sc_title"),
						rs.getInt("sc_teacher"), rs.getDate("sc_schedule_start"), rs.getDate("sc_schedule_finish"),
						rs.getInt("sc_week"), rs.getInt("sc_capacity"), rs.getInt("sc_expense"));
				SimpleDateFormat mm = new SimpleDateFormat("MM");
				SimpleDateFormat hh = new SimpleDateFormat("HH");
				int totalMonth = Integer.parseInt(mm.format(c.getSc_schedule_finish()))
						- Integer.parseInt(mm.format(c.getSc_schedule_start()));
				String totalWeeks = "";
				for (int i = c.getSc_week(); i > 0; i = i >> 1)
				{
					if (i >= 64)
					{
						totalWeeks = "일" + totalWeeks;
					} else if (i >= 32)
					{
						totalWeeks = "토" + totalWeeks;
					} else if (i >= 16)
					{
						totalWeeks = "금" + totalWeeks;
					} else if (i >= 8)
					{
						totalWeeks = "목" + totalWeeks;
					} else if (i >= 4)
					{
						totalWeeks = "수" + totalWeeks;
					} else if (i >= 2)
					{
						totalWeeks = "화" + totalWeeks;
					} else
					{
						totalWeeks = "월" + totalWeeks;
					}
				}
				request.setAttribute("c", c);
				request.setAttribute("totalMonth", totalMonth);
				request.setAttribute("totalHours",
						totalMonth * 20 * (Integer.parseInt(hh.format(c.getSc_schedule_finish()))
								- Integer.parseInt(hh.format(c.getSc_schedule_start())) - 1));
				request.setAttribute("totalWeeks", totalWeeks);
			} else
			{
				request.setAttribute("r", "아무 데이터 없음");
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB서버오류");
		} finally
		{
			DBManager.close(con, pstmt, rs);
		}
	}

	public void getAllSubstance(HttpServletRequest request, HttpServletResponse response)
	{
		// if문으로 scs_info가 이미지인지 텍스트인지 구분하여 보낼 계획
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from SOLDESK_contents_substance " + "order by scs_order desc");
			rs = pstmt.executeQuery();
			substance = new ArrayList<>();
			while (rs.next())
			{
				substance.add(new ContentsSubstance(rs.getInt("scs_no"), rs.getInt("scs_contents_no"),
						rs.getInt("scs_order"), rs.getString("scs_title"), rs.getString("scs_info")));
			}
			if (substance.size() == 0)
			{
				request.setAttribute("r", "아무 데이터 없음");
				substance.add(null);
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB서버오류");
			substance = new ArrayList<>();
			substance.add(null);
		} finally
		{
			DBManager.close(con, pstmt, rs);
		}
	}
}
