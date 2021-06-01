package net.spring.models;

public class Employee {
	
	
	private String EmpId;
	private String Name;
	private String PhoneNumber;
	private String Email;
	private String Role;
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public String getEmpId() {
		return EmpId;
	}
	public void setEmpId(String empId) {
		EmpId = empId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Employee() {}
	public Employee(String empId, String name, String phoneNumber, String email,String role) {
		this.EmpId = empId;
		this.Name = name;
		this.PhoneNumber = phoneNumber;
		this.Email = email;
		this.Role=role;
	}
	@Override
	public String toString() {
		return "Employee [EmpId=" + EmpId + ", Name=" + Name + ", PhoneNumber=" + PhoneNumber + ", Email=" + Email
				+ ", Role=" + Role + "]";
	}
	
	
}
