package com.soldesk.team2.contents;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/ContentsController")
public class ContentsController extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		KDHLocalContentsDAO.getCDAO().getDetailContents(request, response);
		KDHLocalContentsDAO.getCDAO().getAllSubstance(request, response);
		KDHLocalContentsDAO.getCDAO().contentsPaging(request, response);
		request.setAttribute("contentPage", "contents/contents.jsp");
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}
}
