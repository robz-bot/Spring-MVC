package net.spring.models;

import javax.validation.constraints.NotBlank;

public class Admin {
	@NotBlank(message="User Name can't be Empty")
	private String UserName;
	private String Password;
	private String Email;
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "Admin [UserName=" + UserName + ", Password=" + Password + ", Email=" + Email + "]";
	}
	
}
