package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookYourRoom;
import com.mysql.cj.protocol.Resultset;

public class BookYourRoomDao {

	private Connection conn;

	public BookYourRoomDao(Connection conn) {
		super();
		this.conn = conn;
	}

	// hostel boooking
	public boolean addBookingRoom(BookYourRoom ap) {

		boolean f = false;

		try {
			String sql = "insert into  book_your_room (rollNo,fullName,gender,age,bookingDate,email,phnNo,roomNo,sharing,address,status) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ap.getRollNo());
			ps.setString(2, ap.getFullName());
			ps.setString(3, ap.getGender());
			ps.setString(4, ap.getAge());
			ps.setString(5, ap.getBookingDate());
			ps.setString(6, ap.getEmail());
			ps.setString(7, ap.getPhnNo());
			ps.setString(8, ap.getRoomNo());
			ps.setString(9, ap.getSharing());
			ps.setString(10, ap.getAddress());
			ps.setString(11, ap.getStatus());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	// booking Details
	public List<BookYourRoom> getAllbookingsbyLogin(int rollNo) {

		List<BookYourRoom> list = new ArrayList<BookYourRoom>();
		BookYourRoom book = null;
		try {

			String sql = "select * from book_your_room where rollNo=?";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, rollNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				book = new BookYourRoom();
				book.setId(rs.getInt(1));
				book.setRollNo(rs.getInt(2));
				book.setFullName(rs.getString(3));
				book.setGender(rs.getString(4));
				book.setAge(rs.getString(5));
				book.setBookingDate(rs.getString(6));
				book.setEmail(rs.getString(7));
				book.setPhnNo(rs.getString(8));
				book.setRoomNo(rs.getString(9));
				book.setSharing(rs.getString(10));
				book.setAddress(rs.getString(11));
				book.setStatus(rs.getString(12));

				list.add(book);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return list;

	}

	public List<BookYourRoom> getAllbookingsbyRoom(String roomNo) {

		List<BookYourRoom> list = new ArrayList<BookYourRoom>();
		BookYourRoom book = null;
		try {

			String sql = "select * from book_your_room where roomNo=?";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, roomNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				book = new BookYourRoom();
				book.setId(rs.getInt(1));
				book.setRollNo(rs.getInt(2));
				book.setFullName(rs.getString(3));
				book.setGender(rs.getString(4));
				book.setAge(rs.getString(5));
				book.setBookingDate(rs.getString(6));
				book.setEmail(rs.getString(7));
				book.setPhnNo(rs.getString(8));
				book.setRoomNo(rs.getString(9));
				book.setSharing(rs.getString(10));
				book.setAddress(rs.getString(11));
				book.setStatus(rs.getString(12));

				list.add(book);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return list;

	}

	public BookYourRoom getBookingById(int id) {

		BookYourRoom book = null;
		try {

			String sql = "select * from book_your_room where id=?";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				book = new BookYourRoom();
				book.setId(rs.getInt(1));
				book.setRollNo(rs.getInt(2));
				book.setFullName(rs.getString(3));
				book.setGender(rs.getString(4));
				book.setAge(rs.getString(5));
				book.setBookingDate(rs.getString(6));
				book.setEmail(rs.getString(7));
				book.setPhnNo(rs.getString(8));
				book.setRoomNo(rs.getString(9));
				book.setSharing(rs.getString(10));
				book.setAddress(rs.getString(11));
				book.setStatus(rs.getString(12));

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return book;

	}

	public boolean updateBookingStatus(int id, String roomNo, String comment) {

		boolean f = false;
		try {

			String sql = "update book_your_room set status=? where id=? and roomNo=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, comment);
			ps.setInt(2, id);
			ps.setString(3, roomNo);

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
