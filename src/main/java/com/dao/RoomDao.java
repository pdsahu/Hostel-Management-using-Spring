package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Rooms;

public class RoomDao {

	private Connection conn;

	public RoomDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerRoom(Rooms d) {
		boolean f = false;

		try {

			String sql = "insert into room(roomNo,noOfBeds,roomType,sharString,fees) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getRoomNo());
			ps.setString(2, d.getNoOfBeds());
			ps.setString(3, d.getRoomType());
			ps.setString(4, d.getSharString());
			ps.setString(5, d.getFees());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<Rooms> getAllRooms() {
		List<Rooms> list = new ArrayList<Rooms>();
		Rooms d = null;

		try {
			String sql = "select * from room order by roomNo desc ";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				d = new Rooms();
				d.setRoomNo(rs.getString(1));
				d.setNoOfBeds(rs.getString(2));
				d.setRoomType(rs.getString(3));
				d.setSharString(rs.getString(4));
				d.setFees(rs.getString(5));
				list.add(d);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public Rooms getRoomsbyId(String roomNo) {

		Rooms d = null;

		try {
			String sql = "select * from room where roomNo=? ";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, roomNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				d = new Rooms();
				d.setRoomNo(rs.getString(1));
				d.setNoOfBeds(rs.getString(2));
				d.setRoomType(rs.getString(3));
				d.setSharString(rs.getString(4));
				d.setFees(rs.getString(5));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return d;
	}

	public boolean updateRoom(Rooms d) {
		boolean f = false;

		try {

			String sql = " update room set roomNo=?,noOfBeds=?,roomType=?,sharString=?,fees=? where roomNo=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getRoomNo());
			ps.setString(2, d.getNoOfBeds());
			ps.setString(3, d.getRoomType());
			ps.setString(4, d.getSharString());
			ps.setString(5, d.getFees());
			ps.setString(6, d.getRoomNo());
			

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean deleteRoom(String roomNo) {

		boolean f = false;
		try {

			String sql = "delete from room where roomNo=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, roomNo);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

	public Rooms login(String roomNo) {

		Rooms r = null;
		try {
			String sql = "select * from room where roomNo=?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, roomNo);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				r = new Rooms();
				r.setRoomNo(rs.getString(1));
				r.setNoOfBeds(rs.getString(2));
				r.setRoomType(rs.getString(3));
				r.setSharString(rs.getString(4));
				r.setFees(rs.getString(5));

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return r;
	}
}
