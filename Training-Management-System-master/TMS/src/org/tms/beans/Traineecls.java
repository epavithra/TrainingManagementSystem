package org.tms.beans;

public class Traineecls {

	private String userId;
	private String designation;
	private String vertical;
	private String location;
	private String phone;
	private String role;
	private String fname;
	private String lname;
	private String date;
	private String trainer;
	public Traineecls() {
		
	}
	
	public Traineecls(String userId,String fname, String lname, String date, String vertical, String designation,String location, String phone, String role,String trainer) {
		super();
		this.userId = userId;
		this.date = date;
		this.designation=designation;
		this.vertical = vertical;
		this.location = location;
		this.phone = phone;
		this.role = role;
		this.fname = fname;
		this.lname = lname;
		this.date = date;
		this.trainer = trainer;
	}

	

	

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getVertical() {
		return vertical;
	}

	public void setVertical(String vertical) {
		this.vertical = vertical;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
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

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
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

	public String getTrainer() {
		return trainer;
	}

	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}

}
