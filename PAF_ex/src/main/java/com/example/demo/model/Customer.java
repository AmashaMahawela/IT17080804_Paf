package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class Customer {
	
	@Id
	private int id;
	private String userName;
	private String password;
	private int phone; 
	
	public Customer() {
		
		
	}
	
	public Customer(int id, String userName, String password, int phone) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
	}


	


	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getUserName() {
		return userName;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public int getPhone() {
		return phone;
	}




	public void setPhone(int phone) {
		this.phone = phone;
	}




	@Override
	public String toString() {
		return "Customer [id=" + id + ", userName=" + userName + ", password=" + password + ", phone=" + phone + "]";
	}


   
	
	

}
