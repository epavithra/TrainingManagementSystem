package org.tms.beans;

public class User {

	private String userId ;
	private String password;
	public String role;
	public User()
	{
		
	}
	public User(String userId, String password, String role) {
		super();
		this.userId = userId;
		this.password = password;
		this.role=role;
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}
