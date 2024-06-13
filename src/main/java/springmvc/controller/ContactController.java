package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonDataForModel(Model model) {
		model.addAttribute("Header","Learn Spring MVC");
		System.out.println("adding common data to model");
	}
	
	@RequestMapping("/contact")
	public String showForm() {
		return "contact";
	}
	
	@RequestMapping(path="/processform", method=RequestMethod.POST)
	public String handleForm(@ModelAttribute User user,Model model)
	{
		/*
		 * System.out.println(userEmail + " - user email " + userName + " - userName " +
		 * password);
		 */
		
		/*
		 * User user = new User(); user.setEmail(userEmail); user.setUsername(userName);
		 * user.setPassword(password);
		 */
		/* System.out.println(user); */
		
		/*
		 * model.addAttribute("email",userEmail);
		 * model.addAttribute("username",userName);
		 * model.addAttribute("password",password);
		 */
		
		/* model.addAttribute("user",user); */
		if(user.getUsername().isBlank()) {
			return "redirect:/contact";
		}
		
		this.userService.createUser(user);
		
		return "success";
	}
}
