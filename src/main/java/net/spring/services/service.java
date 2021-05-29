package net.spring.services;

import net.spring.models.Employee;

public class service {
	 public static boolean validateUser(String username, String password) {
	        
	        return username.equalsIgnoreCase("robin")
	                && password.equalsIgnoreCase("123");
	    }
	 
	 public static boolean valiateModel(Employee emp)
	 {
		 boolean init=false;
		if(emp.getEmpId().length()>0 
				&& emp.getName().length()>0
				&& emp.getEmail().length()>0
				&& emp.getPhoneNumber().length()>0)
		{
			init=true;
		}
			
			return init;
	 }
}
