package org.tms.beans;

public class Register {
	private String uid;
	private String pass;
	private String fname;
	private String lname;
	private String date;
	private String vertical;
	private String Designation;
	private String Location;
	private String phone;
	private String role;
	private String trainer;
	
	public Register(String uid, String pass, String fname, String lname,
			String date, String vertical, String designation, String location,
			String phone, String role,String trainer) {
		super();
		this.uid = uid;
		this.pass = pass;
		this.fname = fname;
		this.lname = lname;
		this.date = date;
		this.vertical = vertical;
		Designation = designation;
		Location = location;
		this.phone = phone;
		this.role = role;
		this.trainer=trainer;
	}
	
	
	public String getUid() {
		return uid;
	}


	public void setUid(String uid) {
		this.uid = uid;
	}


	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getVertical() {
		return vertical;
	}
	public void setVertical(String vertical) {
		this.vertical = vertical;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public String getTrainer() {
		return trainer;
	}

	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}
	
}
