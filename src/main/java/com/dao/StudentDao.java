package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Student;

public class StudentDao {
	private Connection conn;

	public StudentDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean register(Student s) {

		boolean f = false;

		try {

			String sql = "insert into Student(full_name,dob,bloodgroup,email,phoneno,address,password) Values(?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, s.getFull_name());
			ps.setString(2, s.getDob());
			ps.setString(3, s.getBloodgroup());
			ps.setString(4, s.getEmail());
			ps.setString(5, s.getPhoneno());
			ps.setString(6, s.getAddress());
			ps.setString(7, s.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

//student Login function
	public Student login(String email, String password) {

		Student s = null;

		try {
			String sql = "select * from student where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				s = new Student();

				s.setRollNo(rs.getInt(1));
				s.setFull_name(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setBloodgroup(rs.getString(4));
				s.setEmail(rs.getString(5));
				s.setPhoneno(rs.getString(6));
				s.setAddress(rs.getString(7));

			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		return s;
	}

	

	public boolean checkOldPassword(int rollNo, String oldPassword) {
		boolean f = false;
		try {
			String sql = "select * from student where rollNo=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, rollNo);
			ps.setString(2, oldPassword);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}

	public boolean changePassword(int rollNo, String newPassword) {
		boolean f = false;
		try {
			String sql = "update student set password=? where rollNo=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setInt(2, rollNo);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}
	
	
	
	public boolean editProfile(int rollNo, String full_name, String bloodgroup, String email, String phoneno, String address) {
		boolean f = false;
		try {
			String sql = "update student set full_name=?, bloodgroup=?, email=?, phoneno=?, address=?  where rollNo=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, full_name);
			ps.setString(2, bloodgroup);
			ps.setString(3, email);
			ps.setString(4, phoneno);
			ps.setString(5, address);
			ps.setInt(6, rollNo);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}
	
	
	public boolean checkForgotPassword(int rollNo, String dob) {
		boolean f = false;
		try {
			String sql = "select * from student where rollNo=? and dob=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, rollNo);
			ps.setString(2, dob);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}
	
	
	public boolean changeForgotPassword(int rollNo, String forgotPassword) {
		boolean f = false;
		try {
			String sql = "update student set password=? where rollNo=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, forgotPassword);
			ps.setInt(2, rollNo);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}
}