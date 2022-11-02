package com.entity;

public class Rooms {
	
	
	public Rooms() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Rooms( String roomNo , String noOfBeds, String roomType, String sharString, String fees) {
		super();
		this.roomNo = roomNo;
		this.noOfBeds = noOfBeds;
		this.roomType = roomType;
		this.sharString = sharString;
		this.fees = fees;
	}
	
	private String roomNo;
	private String noOfBeds ;
	private String roomType;
	private String sharString;
	private String fees ;
	
	
	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public String getNoOfBeds() {
		return noOfBeds;
	}

	public void setNoOfBeds(String noOfBeds) {
		this.noOfBeds = noOfBeds;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getSharString() {
		return sharString;
	}

	public void setSharString(String sharString) {
		this.sharString = sharString;
	}

	public String getFees() {
		return fees;
	}

	public void setFees(String fees) {
		this.fees = fees;
	}
	
	
	
}
