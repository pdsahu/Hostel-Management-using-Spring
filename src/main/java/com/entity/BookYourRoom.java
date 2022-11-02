package com.entity;

public class BookYourRoom {

	private int id;
	private int rollNo;
	private String fullName;
	private String gender;
	private String age;
	private String bookingDate;
	private String email;
	private String phnNo;
	private String roomNo;
	private String sharing;
	private String address;
	private String status;

	

	public BookYourRoom() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookYourRoom(int rollNo, String fullName, String gender, String age, String bookingDate, String email,
			String phnNo, String roomNo, String sharing, String address, String status) {
		super();
		this.rollNo = rollNo;
		this.fullName = fullName;
		this.gender = gender;
		this.age = age;
		this.bookingDate = bookingDate;
		this.email = email;
		this.phnNo = phnNo;
		this.roomNo = roomNo;
		this.sharing = sharing;
		this.address = address;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhnNo() {
		return phnNo;
	}

	public void setPhnNo(String phnNo) {
		this.phnNo = phnNo;
	}

	public String getSharing() {
		return sharing;
	}

	public void setSharing(String sharing) {
		this.sharing = sharing;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
