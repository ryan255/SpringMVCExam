package com.hand;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
@Controller

public class HelloController {
	@RequestMapping("/hello")
	
	public String printHello(ModelMap model){
		model.addAttribute("message", "Hello Spring FrameWork");
		return "hello";
	}
	
}