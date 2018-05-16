package com.soldesk.team2.contents;

import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import com.oreilly.servlet.MultipartRequest;
import com.soldesk.common.main.DBManager;
import com.soldesk.common.main.MRManager;
import com.soldesk.team2.teacher.Teacher;

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
				// contents ��� ����
			} else
			{
				// contents ��� ����
			}

		} catch (Exception e)
		{
			// contents ��� ����
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
			// ����
			con = DBManager.connect();

			String sc_title = request.getParameter("sc_title");

			String sql = "delete from soldesk_contents " + "where sc_title=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, sc_title);

			if (pstmt.executeUpdate() == 1)
			{
				request.setAttribute("r", "���� ����");
			} else
			{
				request.setAttribute("r", "���� ����");
			}

		} catch (Exception e)
		{
			request.setAttribute("r", "���� ����");
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

	public void getAllContents(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			request.setAttribute("contents", DBManager.newConnect().selectList("team2.getAll"));
		} catch (Exception e)
		{
			contents = new ArrayList<>();
			contents.add(null);
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
			pstmt = con.prepareStatement("select * from SOLDESK_contents, SOLDESK_CONTENTS_SUBSTANCE, SOLDESK_TEACHER "
					+ "where sc_no=? and sc_no = scs_contents_no and sc_teacher = st_no " + "order by scs_order");
			pstmt.setString(1, request.getParameter("sc_no"));
			rs = pstmt.executeQuery();
			// if������ scs_info�� �̹������� �ؽ�Ʈ���� �������������� �����Ͽ� ���� ��ȹ
			substance = new ArrayList<>();
			Contents c;
			ArrayList<Date> holyDays = new ArrayList<>();
			ArrayList<String> totalWeeks = new ArrayList<>();
			for (int i = 0; rs.next(); i++)
			{
				if (i == 0)
				{
					c = contents(request, con, pstmt, rs);
					totalWeeks = totalWeeks(c);
					holyDays = holyDay(c, totalWeeks);
					request.setAttribute("t", teacher(request, con, pstmt, rs));
					request.setAttribute("c", c);
					request.setAttribute("totalMonth", totalMonth(c));
					request.setAttribute("totalHours", totalHours(c, holyDays.size()));
					request.setAttribute("totalWeeks", totalWeeks);
					request.setAttribute("holyDays", holyDayBuffer(holyDays));
				}
				substance.add(substance(request, con, pstmt, rs));
			}
			if (substance.size() == 0)
			{
				substance.add(null);
			}
			request.setAttribute("substance", substance);
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("r", "DB��������");
		} finally
		{
			DBManager.close(con, pstmt, rs);
		}
	}

	public Teacher teacher(HttpServletRequest request, Connection con, PreparedStatement pstmt, ResultSet rs)
			throws Exception
	{
		return new Teacher(rs.getInt("st_no"), rs.getString("st_name"), rs.getString("st_photo"),
				rs.getString("st_resume"), rs.getString("st_certificate"));
	}

	public Contents contents(HttpServletRequest request, Connection con, PreparedStatement pstmt, ResultSet rs)
			throws Exception
	{
		return new Contents(rs.getInt("sc_no"), rs.getInt("sc_category"), rs.getString("sc_title"),
				rs.getInt("sc_teacher"), rs.getDate("sc_schedule_start"), rs.getDate("sc_schedule_finish"),
				rs.getString("sc_holyday"), rs.getInt("sc_week"), rs.getInt("sc_capacity"), rs.getInt("sc_expense"));
	}

	public ContentsSubstance substance(HttpServletRequest request, Connection con, PreparedStatement pstmt,
			ResultSet rs) throws Exception
	{
		return new ContentsSubstance(rs.getInt("scs_no"), rs.getInt("scs_contents_no"), rs.getInt("scs_order"),
				rs.getString("scs_title"),
				rs.getString("scs_info").replace("{{{", "<img alt=\"����\" src=\"").replace("}}}", "\">"));
	}

	public int oneDayHours(Contents c)
	{
		Calendar startCal = Calendar.getInstance();
		Calendar finishCal = Calendar.getInstance();
		startCal.setTime(c.getSc_schedule_start());
		finishCal.setTime(c.getSc_schedule_finish());
		return finishCal.get(Calendar.HOUR_OF_DAY) - startCal.get(Calendar.HOUR_OF_DAY) - 1;
	}

	public int totalHours(Contents c, int holyDays)
	{
		return (totalDays(c) - holyDays) * oneDayHours(c);
	}

	public int totalDays(Contents c)
	{
		int totalDays;
		Calendar cal = Calendar.getInstance();
		Calendar finishCal = Calendar.getInstance();
		finishCal.setTime(c.getSc_schedule_finish());
		for (totalDays = 0, cal
				.setTime(c.getSc_schedule_start()); !((finishCal.get(Calendar.DATE) == cal.get(Calendar.DATE))
						&& (finishCal.get(Calendar.MONTH) == cal.get(Calendar.MONTH))
						&& (finishCal.get(Calendar.YEAR) == cal.get(Calendar.YEAR))); totalDays++)
		{
			cal.add(Calendar.DATE, 1);
		}
		return totalDays;

	}

	public int totalMonth(Contents c)
	{
		int totalMonth;
		Calendar cal = Calendar.getInstance();
		Calendar finishCal = Calendar.getInstance();
		finishCal.setTime(c.getSc_schedule_finish());
		for (totalMonth = 0, cal
				.setTime(c.getSc_schedule_start()); !((finishCal.get(Calendar.MONTH) == cal.get(Calendar.MONTH))
						&& (finishCal.get(Calendar.YEAR) == cal.get(Calendar.YEAR))); totalMonth++)
		{
			cal.add(Calendar.MONTH, 1);
		}
		return totalMonth;
	}

	public ArrayList<String> totalWeeks(Contents c)
	{
		ArrayList<String> totlaWeeks = new ArrayList<>();
		int weeks = c.getSc_week() + 1;
		for (int j = 64; j > 0; j = j >> 1)
		{
			if (weeks - j > 0)
			{
				switch (j)
				{
				case 64:
					totlaWeeks.add("��");
					break;
				case 32:
					totlaWeeks.add("ȭ");
					break;
				case 16:
					totlaWeeks.add("��");
					break;
				case 8:
					totlaWeeks.add("��");
					break;
				case 4:
					totlaWeeks.add("��");
					break;
				case 2:
					totlaWeeks.add("��");
					break;
				case 1:
					totlaWeeks.add("��");
					break;
				default:
					break;
				}
				weeks -= j;
			}
		}
		return totlaWeeks;
	}

	public ArrayList<Date> holyDay(Contents c, ArrayList<String> totalWeeks)
	{
		Calendar startCal = Calendar.getInstance();
		Calendar finishCal = Calendar.getInstance();
		startCal.setTime(c.getSc_schedule_start());
		finishCal.setTime(c.getSc_schedule_finish());
		HttpURLConnection huc;
		int fM = finishCal.get(Calendar.MONTH);
		int fY = finishCal.get(Calendar.YEAR);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		ArrayList<Date> holyDays = new ArrayList<>();
		Date d = new Date();
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat week = new SimpleDateFormat("E", Locale.KOREAN);
		String key = "3g256y1lTkLGkMNLH5ou4bg7qbxZqTJdRNELoJAM1mn9RyTFmot0Js5mK0aBNv3nnKGh%2FmLwDYx8Gvx6IqEK4w%3D%3D";
		XmlPullParser xpp;
		String tName = null;
		String selectHolyDay = c.getSc_holyday();
		for (cal.setTime(startCal.getTime()); !((finishCal.get(Calendar.DATE) == cal.get(Calendar.DATE))
				&& (fM == cal.get(Calendar.MONTH)) && (fY == cal.get(Calendar.YEAR))); cal.add(Calendar.DATE, 1))
		{
			d = cal.getTime();
			if (!totalWeeks.contains(week.format(d)) && !selectHolyDay.contains(sdf.format(d)))
			{
				holyDays.add(d);
			}
		}
		try
		{
			for (String string : selectHolyDay.split(","))
			{
				holyDays.add(sdf.parse(string));
			}
			cal.setTime(startCal.getTime());
			for (cal.setTime(
					startCal.getTime()); !((fM == cal.get(Calendar.MONTH)) && (fY == cal.get(Calendar.YEAR))); cal
							.add(Calendar.MONTH, 1))
			{
				huc = (HttpURLConnection) new URL(String.format(
						"http://apis.data.go.kr/B090041/openapi/service/SpcdeInfoService/getRestDeInfo?solYear=%d&solMonth=%02d&ServiceKey=",
						cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)) + key).openConnection();

				xpp = XmlPullParserFactory.newInstance().newPullParser();
				xpp.setInput(huc.getInputStream(), "utf-8");

				for (int type = xpp.getEventType(); type != XmlPullParser.END_DOCUMENT; type = xpp.next())
				{
					if (type == XmlPullParser.START_TAG)
					{
						tName = xpp.getName();
					} else if (type == XmlPullParser.TEXT)
					{
						if (tName.equals("locdate"))
						{
							d = sdf.parse(xpp.getText());
							if (totalWeeks.contains(week.format(d)) && !selectHolyDay.contains(sdf.format(d)))
							{
								holyDays.add(d);
							}
						}
					}
				}
			}
		} catch (Exception e)
		{
		}
		for (int i = 0; i < holyDays.size(); i++)
		{
			if (holyDays.get(i).before(startCal.getTime()) || holyDays.get(i).after(finishCal.getTime()))
			{
				holyDays.remove(i);
				i--;
			}
		}
		return holyDays;
	}

	public String holyDayBuffer(ArrayList<Date> holyDays)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < holyDays.size(); i++)
		{
			sb.append(sdf.format(holyDays.get(i)));
			if (i != holyDays.size())
			{
				sb.append(",");
			}
		}
		return sb.toString();
	}
}
