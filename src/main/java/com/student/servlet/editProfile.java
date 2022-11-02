package com.student.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.dao.StudentDao;

@WebServlet("/editProfile")
public class editProfile extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int rollNo = Integer.parseInt(req.getParameter("rollNo"));
		String full_name=req.getParameter("full_name");
		String bloodgroup=req.getParameter("bloodgroup");
		String email=req.getParameter("email");
		String phoneno=req.getParameter("phoneno");
		String address=req.getParameter("address");
		
		StudentDao dao = new StudentDao(DBConnect.getConn());
		HttpSession session = req.getSession();
		
		
		if(dao.editProfile(rollNo, full_name, bloodgroup, email, phoneno, address)) {
			session.setAttribute("succMsg", "updated your details!");
			resp.sendRedirect("edit_profile.jsp");
		}else {
			session.setAttribute("errorMsg", "something wrong on server");
			resp.sendRedirect("edit_profile.jsp");
		}
	}
	
}
