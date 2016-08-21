package com.hand;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hand.dto.Customer;
import com.hand.service.CustomerService;

@Service
@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;

//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public ModelAndView city() {
//		return new ModelAndView("login", "command", new Customer());
//	}
	
	@RequestMapping(value="/logins",method = RequestMethod.POST)
	public ModelAndView loginCheck(@RequestParam("first_name")String name,@RequestParam("last_name")String password,Model model,HttpSession session){
		ModelAndView modelAndView;
		System.out.println(name+"..."+password);
		if (name.equals("")||password.equals("")) {
			model.addAttribute("msg","用户名或密码不能为空");
			modelAndView = new ModelAndView("login");
			return modelAndView;
		}else {
			Customer customer = customerService.find(name);
			System.out.println("customer");
			if (customer==null) {
				System.out.println("用户名错误");
				model.addAttribute("msg","用户名错误");
				modelAndView = new ModelAndView("login");
				return modelAndView;
			}else{
				if (customer.getLast_name().equals(password)) {
					modelAndView = new ModelAndView("cityresult");
					model.addAttribute("name",name);
					session.setAttribute("name", name);
					return modelAndView;
				}else{
					modelAndView = new ModelAndView("login");
					model.addAttribute("msg","密码错误");
					return modelAndView;
				}
			}
			
		}
	}

}
