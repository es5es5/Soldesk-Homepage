package com.soldesk.team3.bulletin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.team3.menu.MenuDAO;

@WebServlet("/ViewBulletinController")
public class ViewBulletinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewBulletinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BulletinDAO.getWndao().getDetailNotice(request, response);
		MenuDAO.getMdao().getMainMenu(request, response);
		request.setAttribute("contentPage", "bulletin/bulletinTxt.jsp");
		request.getRequestDispatcher("jsp/index2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
