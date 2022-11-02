package com.admin.servlet;

import java.io.IOException;
import java.net.ResponseCache;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.tag.common.xml.IfTag;

import com.Db.DBConnect;
import com.dao.RoomCategoryDao;
import com.entity.Student;
import com.mysql.cj.Session;

@WebServlet("/addRoomType")
public class AddRoomCategory extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String roomTypeName = req.getParameter("roomTypeName");
		
		RoomCategoryDao dao = new RoomCategoryDao(DBConnect.getConn());
		boolean f = dao.addRoomCategory(roomTypeName);
		
		HttpSession session = req.getSession();
		
		if (f) {

			session.setAttribute("succMsg", "Room Type Added");
			resp.sendRedirect("admin/index.jsp");
		} else {

			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("admin_login.jsp");

		}
	}
	

}
