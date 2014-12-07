package net.celphone.controller.home;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/home")
public class MainController {
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String goMain(ModelMap model){
		return "redirect:/home/main";
	}
	
}
