package com.soldesk.team3.bulletin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.team3.menu.MenuDAO;

@WebServlet("/BulletinPageController")
public class BulletinPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BulletinPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BulletinDAO.getWndao().getAllLists(request, response);
		int p = Integer.parseInt(request.getParameter("p"));
		BulletinDAO.getWndao().paging(p, request, response);
		MenuDAO.getMdao().getMainMenu(request, response);
		request.setAttribute("contentPage", "bulletin/bulletin.jsp");
		request.getRequestDispatcher("jsp/index2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
