package com.soldesk.team3.bulletin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.team3.menu.MenuDAO;

@WebServlet("/UpdateBulletinController")
public class UpdateBulletinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateBulletinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MenuDAO.getMdao().getMainMenu(request, response);
		BulletinDAO.getWndao().getDetailNotice(request, response);
		request.setAttribute("contentPage", "bulletin/updateBulletin.jsp");
		request.getRequestDispatcher("jsp/index2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		BulletinDAO.getWndao().update(request, response);
		BulletinDAO.getWndao().getAllLists(request, response);
		BulletinDAO.getWndao().paging(1, request, response);
		MenuDAO.getMdao().getMainMenu(request, response);
		request.setAttribute("contentPage", "bulletin/bulletin.jsp");
		request.getRequestDispatcher("jsp/index2.jsp").forward(request, response);
	}

}
