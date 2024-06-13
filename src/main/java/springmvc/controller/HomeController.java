package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/first")
public class HomeController {
	@RequestMapping(path="/home", method = RequestMethod.GET)
	public String home(Model model) {		
		System.out.println("this is home url");
		model.addAttribute("name", "kartik hgj");
		model.addAttribute("id",101);
		
		List<String> lst = new ArrayList<String>();
		lst.add("Toyota");
		lst.add("Honda");
		lst.add("Audi");
		
		model.addAttribute("list",lst);
		
		return "index1";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	//help
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("this is help controller");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("name","Uttam");
		modelAndView.addObject("rollNo",25);
		
		LocalDateTime dt = LocalDateTime.now();
		modelAndView.addObject("time",dt);
		
		List<Integer> lst = new ArrayList<>();
		lst.add(10);
		lst.add(14);
		lst.add(35);
		
		modelAndView.addObject("marks",lst);
		modelAndView.setViewName("help");
		
		return modelAndView;
	}
}
