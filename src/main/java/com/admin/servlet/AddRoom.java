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
import com.entity.Rooms;

@WebServlet("/addRoom")
public class AddRoom extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String roomNo = req.getParameter("roomNo");
			String noOfBeds = req.getParameter("noOfBed");
			String roomType = req.getParameter("roomType");
			String sharString = req.getParameter("sharing");
			String fees = req.getParameter("fees");
			
			Rooms d = new Rooms(roomNo,noOfBeds,roomType,sharString,fees);
			
			RoomDao dao = new RoomDao(DBConnect.getConn());
			HttpSession session = req.getSession();
			
			if(dao.registerRoom(d)) {
				session.setAttribute("succMsg", "Room Added Sucessfully");
				resp.sendRedirect("admin/view_room.jsp");
			}else {
				session.setAttribute("errorMsg", "Something wrong on Server");
				resp.sendRedirect("admin/view_room.jsp");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
