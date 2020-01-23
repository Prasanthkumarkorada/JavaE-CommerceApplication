package com.tadigital.entity;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String password;
	private String staySignedIn;
	private String gender;
	private String mobilenumber;
	public Customer() {
	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getPassword() {
		return password;
	}
	public String getStaySignedIn() {
		return staySignedIn;
	}
		
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setStaySignedIn(String staySignedIn) {
		this.staySignedIn = staySignedIn;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", staySignedIn=" + staySignedIn + ", gender=" + gender + ", mobilenumber=" + mobilenumber + "]";
	}
	
		
}