package com.entity;

//import java.nio.channels.InterruptedByTimeoutException;

public class RoomCategory {
 private int id;
 private String roomType;
 
 public RoomCategory(int id, String roomType) {
		super();
		this.id = id;
		this.roomType = roomType;
	}
	 
 
public RoomCategory() {
	super();
	// TODO Auto-generated constructor stub
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getRoomType() {
	return roomType;
}
public void setRoomType(String roomType) {
	this.roomType = roomType;
}

 
 
 

}
