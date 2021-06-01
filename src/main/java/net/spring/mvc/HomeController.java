package net.spring.mvc;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import net.spring.models.Admin;
import net.spring.models.Employee;
import net.spring.models.LoginCredentials;
import net.spring.models.Mail;
import net.spring.services.service;

@Controller
public class HomeController {
	// Home Page
	@RequestMapping("/")
	public String showHome() {
		return "home";
	}

	// SignUp Page
	@RequestMapping(value = "/Signup", method = RequestMethod.GET)
	public String ForgetPassword() {
		return "signup";
	}
	
	@RequestMapping(value = "/demo", method = RequestMethod.GET)
	public String demo() {
		return "demo";
	}

	// List Of Employees
	@RequestMapping(value = "/EmpList", method = RequestMethod.GET)
	public String getdata(Model m) {
		List<Employee> list = dao.getEmpDetails();
		m.addAttribute("EmpList", list);
		return "EmpList";
	}

	// Employee Dashboard
	@RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
	public String getdata() {
		return "Dashboard";
	}

	// Mail Page
	@RequestMapping(value = "/Mail", method = RequestMethod.GET)
	public String gotoMail(Model m) {
		List<Employee> list = dao.getEmpDetails();
		m.addAttribute("list", list);
		return "mail";
	}

	@RequestMapping(value = "/Dashboard", method = RequestMethod.POST)
	public String home(@ModelAttribute("login") LoginCredentials login, Model model) {
		List<Admin> list = dao.getAdminDetails();
		boolean isTrue = false;
		for (Admin ad : list) {
			if (ad.getUserName().equals(login.getUsername()) && ad.getPassword().equals(login.getPassword())) {
				isTrue = true;
				break;
			} else {
				isTrue = false;
			}
		}
		System.out.println(isTrue);
		if (!isTrue) {
			String ErrMsg = "User Not Found!";
			model.addAttribute("ErrMsg", ErrMsg);
			return "home";
		} else {
			model.addAttribute("login", login);
			return "Dashboard";
		}
	}

	@Autowired
	dao dao;
	//Save Employee Logic
	@RequestMapping(value = "/SaveEmp", method = RequestMethod.POST)
	public String SaveEmp(@ModelAttribute("emp") Employee emp, Model model,BindingResult result) {
		boolean validateModel = service.valiateModel(emp);
		if (validateModel) {
			dao.saveEmp(emp);
			String SuccMsg = "Employee Saved Successfully...";
			model.addAttribute("SuccMsg", SuccMsg);
		} else {
			String ErrMsg = "Please Fill All the (*) Required Fields";
			model.addAttribute("ErrMsg", ErrMsg);
		}
		System.out.print(emp);
		return "Dashboard";
	}

	//Save Admin Logic
	@RequestMapping(value = "/SaveAdmin", method = RequestMethod.POST)
	public String SaveAdmin(@ModelAttribute("admin") Admin admin, Model model, @RequestParam("cpass") String cpass) {
		boolean validateModel = service.valiateModel(admin);
		if(cpass==admin.getPassword())
		{
			if (validateModel) {
				dao.saveAdmin(admin);
				String SuccMsg = "Registered Successfully...";
				model.addAttribute("SuccMsg", SuccMsg);
			} else {
				String ErrMsg = "Please Fill All the (*) Required Fields";
				model.addAttribute("ErrMsg", ErrMsg);
			}
		}
		else
		{
			String ErrMsg = "Password and Confirm Password doesn't match!";
			model.addAttribute("ErrMsg", ErrMsg);
		}
		
		return "signup";
	}
	
	//Save and Send Mail
	@RequestMapping(value = "/SaveMail", method = RequestMethod.POST)
	public String SaveMail(@ModelAttribute("mail") Mail mail, Model model) {
		boolean validateModel = service.valiateModel(mail);
		System.out.println(mail);
		if (validateModel) {
			dao.saveMail(mail);
			String SuccMsg = "Task Added Successfully...";
			model.addAttribute("SuccMsg", SuccMsg);
		} else {
			String ErrMsg = "Please Fill All the (*) Required Fields";
			model.addAttribute("ErrMsg", ErrMsg);
		}
		return "mail";
	}
}
