package com.entity;

public class Student {

	private int rollNo;
	private String full_name;
	private String dob;
	private String bloodgroup;
	private String email;
	private String phoneno;
	private String address;
	private String password;

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(String full_name, String dob, String bloodgroup, String email, String phoneno, String address,
			String password) {
		super();
		this.full_name = full_name;
		this.dob = dob;
		this.bloodgroup = bloodgroup;
		this.email = email;
		this.phoneno = phoneno;
		this.address = address;
		this.password = password;
	}

	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
