package com.room.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.dao.BookYourRoomDao;
import com.entity.BookYourRoom;

@WebServlet("/bookYourRoom")
public class BookYourRoomServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int rollNo = Integer.parseInt(req.getParameter("rollNo"));
		String fullName = req.getParameter("fullName");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String bookingDate = req.getParameter("bookingDate");
		String email = req.getParameter("email");
		String phnNo = req.getParameter("phnNo");
		String roomNo = req.getParameter("roomNo");
		String sharing = req.getParameter("sharing");
		String address = req.getParameter("address");

		BookYourRoom ap = new BookYourRoom(rollNo, fullName, gender,  age,  bookingDate,  email,
				phnNo,roomNo, sharing, address, "pending");
		BookYourRoomDao dao = new BookYourRoomDao(DBConnect.getConn());

		HttpSession session = req.getSession();
		
		
		
		if (dao.addBookingRoom(ap)) {
			session.setAttribute("succMsg", "Room Booked Successfully ");
			resp.sendRedirect("bookYourRoom.jsp");
		} else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("bookYourRoom.jsp");

		}

	}

}
