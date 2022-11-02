package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.PseudoColumnUsage;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.RoomCategory;
import com.mysql.cj.xdevapi.PreparableStatement;

public class RoomCategoryDao {
private Connection conn;

public RoomCategoryDao(Connection conn) {
	super();
	this.conn = conn;
}

public boolean addRoomCategory(String  roomType ) {
	
	boolean f=false;
	try {
		
		String sql = "insert into roomcategory(roomType) values(?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,roomType);
		
		int i = ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
}
public List<RoomCategory> getAllRoomCategories(){
	List<RoomCategory> list = new ArrayList<RoomCategory>();
	RoomCategory s = null;
	
	try {
		String sql = "select * from roomcategory";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			s = new RoomCategory();
			s.setId(rs.getInt(1));
			s.setRoomType(rs.getString(2));
			list.add(s);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}
}
