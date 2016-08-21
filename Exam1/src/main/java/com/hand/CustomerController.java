package com.hand;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value="/logins",method = RequestMethod.POST)
	public String loginCheck(@RequestParam("first_name")String name,@RequestParam("last_name")String password,Model model,HttpSession session){
		System.out.println(name+"..."+password);
		if (name.equals("")||password.equals("")) {
			model.addAttribute("msg","用户名或密码不能为空");
			return "login";
		}else {
			Customer customer = customerService.find(name);
			System.out.println("customer");
			if (customer==null) {
				System.out.println("yonghumingcuowu");
				model.addAttribute("msg","用户名或密码错误");
				return "login";
			}else{
				if (customer.getLast_name().equals(password)) {
//					model.addAttribute("name",name);
					session.setAttribute("sessionname", name);
					return "success";
				}else{
					model.addAttribute("msg","用户名或密码错误");
					return "login";
				}
			}
			
		}
	}

}
