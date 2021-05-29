package net.spring.mvc;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import net.spring.models.Employee;
import net.spring.models.LoginCredentials;
import net.spring.services.service;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHome() {
		return "home";
	}

	@RequestMapping(value = "/ForgetPassword", method = RequestMethod.GET)
	public String ForgetPassword() {
		return "ForgetPassword";
	}
	
	@RequestMapping(value = "/EmpList", method = RequestMethod.GET)
	public String getdata(Model m) {
        List<Employee> list = dao.getEmpDetails();
        m.addAttribute("EmpList",list);
        return "EmpList";
    }

	@RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
	public String getdata() {
		return "Dashboard";
	}
	
	
	@RequestMapping(value = "/Dashboard", method = RequestMethod.POST)
	public String home(@ModelAttribute LoginCredentials login, Model model,ModelAndView model1) {

		boolean isTrue = service.validateUser(login.getUsername(), login.getPassword());
		if (!isTrue) {
			String ErrMsg = "Invalid Credentials...!";
			model.addAttribute("ErrMsg", ErrMsg);
			return "home";
		} else {
			model.addAttribute("login", login);
			return "Dashboard";
		}
	}

	@Autowired
	dao dao;

	@RequestMapping(value = "/SaveEmp", method = RequestMethod.POST)
	public String SaveEmp(@ModelAttribute("emp") Employee emp, Model model) {
		//System.out.println(model);
		boolean validateModel=service.valiateModel(emp);
		//System.out.println("Boolean:"+validateModel);
		if(validateModel)
		{
			dao.saveEmp(emp);
			String SuccMsg = "Employee Saved Successfully...";
			model.addAttribute("SuccMsg", SuccMsg);
		}
		else
		{
			String ErrMsg = "Please Fill All the (*) Required Fields";
			model.addAttribute("ErrMsg", ErrMsg);
		}
		System.out.print(emp);
		return "Dashboard";
		 
	}
	
}
