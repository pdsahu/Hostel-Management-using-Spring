package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.dao.BookYourRoomDao;

@WebServlet("/UpdateStatus")
public class UpdateStatus extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			int id = Integer.parseInt(req.getParameter("id"));
			String rid = req.getParameter("rid");
			String comment = req.getParameter("comment");
			BookYourRoomDao dao = new BookYourRoomDao(DBConnect.getConn());
			HttpSession session = req.getSession();
			if (dao.updateBookingStatus(id, rid, comment)) {

				session.setAttribute("sucMsg", "Status updated");
				resp.sendRedirect("admin/student_booking.jsp");
			} else {
				session.setAttribute("errorMsg", "something Went Wrong on server");
				resp.sendRedirect("admin/student_booking.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
