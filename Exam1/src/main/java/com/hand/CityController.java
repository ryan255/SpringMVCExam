package com.hand;

import com.hand.dto.Address;
import com.hand.service.AddressService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.hand.dto.Customer;
import com.hand.service.CustomerService;

import java.sql.Timestamp;
import java.util.Map;

@Service
@Controller
public class CityController {
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public ModelAndView city() {
		return new ModelAndView("customer", "command", new Customer());
	}

//	@RequestMapping(value = "/test", method = RequestMethod.GET)
//	public @ResponseBody
//	Address map(){
//		ApplicationContext ac = new FileSystemXmlApplicationContext("src/main/resources/ApplicationContext.xml");
//		AddressService addressService = (AddressService) ac.getBean("addressServiceImpl");
//		return addressService.findkey();
//	}

	@RequestMapping(value = "/delCu", method = RequestMethod.GET)
	public ModelAndView del() {
		return new ModelAndView("delcuststart", "command", new Customer());
	}

	@RequestMapping(value = "/ins", method = RequestMethod.GET)
	public ModelAndView ins() {
		return new ModelAndView("insertCustomer", "command", new Customer());
	}
	
	@RequestMapping(value = "/upCu", method = RequestMethod.GET)
	public ModelAndView upCu() {
		return new ModelAndView("updatestart", "command", new Customer());
	}

	@RequestMapping(value = "/delCustomer", method = RequestMethod.POST)

	public String delCustomer(@ModelAttribute("SpringMVCExam")Customer customer,Model model){
		ApplicationContext ac = new FileSystemXmlApplicationContext("/users/ryan255/documents/workspace/SpringMVCExam/Exam1/src/main/resources/ApplicationContext.xml");
		CustomerService customerService = (CustomerService) ac.getBean("customerServiceImpl");
		System.out.println(customer.getCustomer_id());
		customerService.delete(customer.getCustomer_id());
		return "delcustend";
	}

	@RequestMapping(value="/findCustomer",method = RequestMethod.POST)

	public String findCustomer(@ModelAttribute("SpringMVCExam")Customer customer,Model model){
//		System.out.println(customer.getFirst_name());
		ApplicationContext ac = new FileSystemXmlApplicationContext("/users/ryan255/documents/workspace/SpringMVCExam/Exam1/src/main/resources/ApplicationContext.xml");
//		ApplicationContext ac = new ApplicationContext("ApplicationContext.cml");
		CustomerService customerService = (CustomerService) ac.getBean("customerServiceImpl");
		Customer customer2 = customerService.find(customer.getFirst_name());
		model.addAttribute("first_name",customer2.getFirst_name());
		model.addAttribute("last_name",customer2.getLast_name());
		return "cityresult";
	}


	@RequestMapping(value="/insertCustomer",method = RequestMethod.POST)

	public String insertCustomer(@ModelAttribute("SpringMVCExam")Customer customer,Model model){
		Timestamp d = new Timestamp(System.currentTimeMillis());
		ApplicationContext ac = new FileSystemXmlApplicationContext("/users/ryan255/documents/workspace/SpringMVCExam/Exam1/src/main/resources/ApplicationContext.xml");
		CustomerService customerService = (CustomerService) ac.getBean("customerServiceImpl");

		customer.setFirst_name(customer.getFirst_name());
		customer.setLast_name(customer.getLast_name());
		customer.setEmail(customer.getEmail());
		customer.setCreate_date(d);
		customerService.add(customer);
		return "insertend";
	}
	
	@RequestMapping(value="/updateCustomer",method = RequestMethod.POST)

	public String updateCustomer(@ModelAttribute("SpringMVCExam")Customer customer,Model model){
		Timestamp d = new Timestamp(System.currentTimeMillis());
		ApplicationContext ac = new FileSystemXmlApplicationContext("/users/ryan255/documents/workspace/SpringMVCExam/Exam1/src/main/resources/ApplicationContext.xml");
		CustomerService customerService = (CustomerService) ac.getBean("customerServiceImpl");

		customer.setFirst_name(customer.getFirst_name());
		customer.setLast_name(customer.getLast_name());
		customer.setEmail(customer.getEmail());
		customerService.update(customer);
		return "insertend";
	}

}
