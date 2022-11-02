package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.dao.RoomDao;

@WebServlet("/deleteRoom")
public class DeleteRoom extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String roomNo = req.getParameter("roomNo");

		RoomDao dao = new RoomDao(DBConnect.getConn());
		HttpSession session = req.getSession();

		if (dao.deleteRoom(roomNo)) {
			session.setAttribute("succMsg", "Room Delete Sucessfully");
			resp.sendRedirect("admin/view_room.jsp");
		} else {
			session.setAttribute("errorMsg", "Something wrong on Server");
			resp.sendRedirect("admin/view_room.jsp");
		}

	}

}
