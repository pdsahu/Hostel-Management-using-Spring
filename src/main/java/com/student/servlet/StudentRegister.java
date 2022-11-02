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
import com.entity.Student;
 

@WebServlet("/student_register")
public class StudentRegister extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //doPost(req, resp);

        try {
            String fullName=req.getParameter("fullName");
            String dob=req.getParameter("dob");
            String bloodgroup=req.getParameter("bloodgroup");
            String email=req.getParameter("email");
            String phoneno=req.getParameter("phoneno");
            String address=req.getParameter("address");            
            String password=req.getParameter("password");

            Student s = new Student(fullName, dob, bloodgroup, email, phoneno, address, password);

            StudentDao dao = new StudentDao(DBConnect.getConn());

            HttpSession session = req.getSession();            

            boolean f = dao.register(s);

            if(f) {

                session.setAttribute("sucMsg","Registered sucessfully go to student login page");
                resp.sendRedirect("signup.jsp");
            }else {
                session.setAttribute("errorMsg","something went wrong on server");
                resp.sendRedirect("signup.jsp");

            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

 
}