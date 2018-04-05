package com.soldesk.team2.contents;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.common.main.DBManager;

public class KDHLocalContentsDAO
{
	private static KDHLocalContentsDAO CDAO = new KDHLocalContentsDAO();
	private ArrayList<Contents> contents;
	private ArrayList<ContentsSubstance> substance;

	public static KDHLocalContentsDAO getCDAO()
	{
		return CDAO;
	}

	public static void setCDAO(KDHLocalContentsDAO cDAO)
	{
		CDAO = cDAO;
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
				contents.add(new Contents(rs.getString("sc_category"), rs.getString("sc_title"),
						rs.getInt("sc_teacher"), rs.getDate("sc_schedule_START"), rs.getDate("sc_schedule_FINISH"),
						rs.getInt("sc_week"), rs.getDate("sc_time_START"), rs.getDate("sc_time_FINISH"),
						rs.getInt("sc_capacity"), rs.getInt("sc_expense")));
			}
			if (contents.size() == 0)
			{
				request.setAttribute("r", "�ƹ� ������ ����");
				contents.add(null);
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB��������");
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
			pstmt = con.prepareStatement("select * from SOLDESK_contents " + "where sc_title=?");
			pstmt.setString(1, request.getParameter("sc_title"));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				Contents c = new Contents(rs.getString("sc_category"), rs.getString("sc_title"),
						rs.getInt("sc_teacher"), rs.getDate("sc_schedule_START"), rs.getDate("sc_schedule_FINISH"),
						rs.getInt("sc_week"), rs.getDate("sc_time_START"), rs.getDate("sc_time_FINISH"),
						rs.getInt("sc_capacity"), rs.getInt("sc_expense"));
				SimpleDateFormat MM = new SimpleDateFormat("MM");
				SimpleDateFormat HH = new SimpleDateFormat("HH");
				int totalMonth = Integer.parseInt(MM.format(c.getSc_schedule_finish()))
						- Integer.parseInt(MM.format(c.getSc_schedule_start()));
				String totalWeeks = "";
				for (int i = c.getSc_week(); i > 0; i = i >> 1)
				{
					if (i >= 64)
					{
						totalWeeks = "��" + totalWeeks;
					} else if (i >= 32)
					{
						totalWeeks = "��" + totalWeeks;
					} else if (i >= 16)
					{
						totalWeeks = "��" + totalWeeks;
					} else if (i >= 8)
					{
						totalWeeks = "��" + totalWeeks;
					} else if (i >= 4)
					{
						totalWeeks = "��" + totalWeeks;
					} else if (i >= 2)
					{
						totalWeeks = "ȭ" + totalWeeks;
					} else
					{
						totalWeeks = "��" + totalWeeks;
					}
				}
				request.setAttribute("c", c);
				request.setAttribute("totalMonth", totalMonth);
				request.setAttribute("totalHours", totalMonth * 20 * (Integer.parseInt(HH.format(c.getSc_time_finish()))
						- Integer.parseInt(HH.format(c.getSc_time_start())) - 1));
				request.setAttribute("totalWeeks", totalWeeks);
			} else
			{
				request.setAttribute("r", "�ƹ� ������ ����");
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB��������");
		} finally
		{
			DBManager.close(con, pstmt, rs);
		}
	}

	public void getAllSubstance(HttpServletRequest request, HttpServletResponse response)
	{
		// if������ scs_info�� �̹������� �ؽ�Ʈ���� �����Ͽ� ���� ��ȹ
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			con = DBManager.connect();
			pstmt = con.prepareStatement("select * from SOLDESK_contents_substance " + "order by scs_no");
			rs = pstmt.executeQuery();
			substance = new ArrayList<>();
			while (rs.next())
			{
				substance.add(new ContentsSubstance(rs.getInt("scs_no"), rs.getString("scs_main_title"),
						rs.getString("scs_title"), rs.getString("scs_info")));
			}
			if (substance.size() == 0)
			{
				request.setAttribute("r", "�ƹ� ������ ����");
				substance.add(null);
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB��������");
			substance = new ArrayList<>();
			substance.add(null);
		} finally
		{
			DBManager.close(con, pstmt, rs);
		}
	}
}
