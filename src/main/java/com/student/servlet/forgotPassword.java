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


@WebServlet("/studentForgotPassword")
public class forgotPassword extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int sid = Integer.parseInt(req.getParameter("sid"));
		String dob = req.getParameter("dob");
		String forgotPassword = req.getParameter("forgotpassword");
		
		StudentDao dao = new StudentDao(DBConnect.getConn());
		HttpSession session = req.getSession();
		
		if(dao.checkForgotPassword(sid, dob))
		{
			if(dao.changeForgotPassword(sid, forgotPassword)) {
				session.setAttribute("succMsg", "Password Changed! Go to student login page");
                resp.sendRedirect("forgot_password.jsp");
			}else {
				session.setAttribute("errorMsg", "Something wrong on server");
                resp.sendRedirect("forgot_password.jsp");
			}
			
		}else {
			session.setAttribute("errorMsg", "RollNo or DOB Incorrect");
            resp.sendRedirect("forgot_password.jsp");
		}
		
		
	}
	

}
