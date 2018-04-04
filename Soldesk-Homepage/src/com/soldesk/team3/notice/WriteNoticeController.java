package com.soldesk.team3.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WriteNoticeController")
public class WriteNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WriteNoticeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("contentPage", "notice/writeNotice.jsp");
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("euc-kr");
		
		NoticeDAO.getWndao().write(request, response);
		NoticeDAO.getWndao().getAllLists(request, response);
		NoticeDAO.getWndao().paging(1, request, response);
		request.setAttribute("contentPage", "notice/notice.jsp");
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
		
	}

}
