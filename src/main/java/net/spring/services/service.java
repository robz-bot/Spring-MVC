package net.spring.services;

import net.spring.models.Admin;
import net.spring.models.Employee;
import net.spring.models.Mail;

public class service {
	public static boolean valiateModel(Employee emp) {
		boolean init = false;
		if (emp.getEmpId().length() > 0 && emp.getName().length() > 0 && emp.getEmail().length() > 0
				&& emp.getPhoneNumber().length() > 0) {
			init = true;
		}
		return init;
	}

	public static boolean valiateModel(Admin admin) {

		boolean init = false;
		if (admin.getUserName().length() > 0 && admin.getPassword().length() > 0) {
			init = true;
		}

		return init;
	}

	public static boolean valiateModel(Mail mail) {
		boolean init = false;
		if (mail.getEmpId().length() > 0 && mail.getProject().length() > 0 && mail.getModule().length() > 0
				&& mail.getMessage().length() > 0 && mail.getStartDate().length() > 0 && mail.getEndDate().length() > 0
				&& mail.getStatus().length() > 0) {
			init = true;
		}

		return init;
	}
}
