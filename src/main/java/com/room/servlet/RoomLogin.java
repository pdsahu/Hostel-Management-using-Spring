package com.room.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.dao.RoomDao;
import com.dao.StudentDao;
import com.entity.Rooms;
import com.entity.Student;

@WebServlet("/roomLogin")
public class RoomLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String roomNo = req.getParameter("roomNo");
		

		HttpSession session = req.getSession();

		RoomDao dao = new RoomDao(DBConnect.getConn());

		Rooms r = dao.login(roomNo);

		if (r != null) {

			session.setAttribute("roomObj", r);
			resp.sendRedirect("admin/room_index.jsp");
		} else {

			session.setAttribute("errorMsg", "Invaild id");
			resp.sendRedirect("room.jsp");

		}

	}

}
