package com.hand;

import java.util.List;

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
import javax.validation.Valid;

import com.hand.dto.Customer;
import com.hand.service.CustomerService;
import com.hand.dto.Page;

@Controller
public class CustomerShowController {
	@Autowired
	private CustomerService customerService;
	Customer Customer = new Customer();
	Page page = new Page();
	List<Customer> customerAll;

	@RequestMapping(value = "show")
	public String selectAllCustomer(Model model) {
		
		this.page=new Page();
		List<Customer> customers = customerService.select();
		customerAll = customers;
		getPage(customers, model);
		getSubList(customers, model);
		return "show";
	}
	
	@RequestMapping(value="turnPage")
	public String turnPage(@ModelAttribute("page") @Valid  Page page,Model model){
		System.out.println("------------------------------->turnPage");
		this.page = page;
		getPage(customerAll,model);
		getSubList(customerAll,model);
		return "show";
	}
	
	public void getSubList(List<Customer> customers,Model model){
    	int rowsCount = customers.size();
		int start = (page.getCurrentPage()-1)*page.getRowsPerPage() ;
		int end = page.getCurrentPage()*page.getRowsPerPage() ;
		int startIndex = start>rowsCount?1:start;
		int endIndex = end>rowsCount?rowsCount:end;
		List<Customer> customerList = customerAll.subList(startIndex,endIndex);
		model.addAttribute("customerList",customerList);
	}
	public void getPage(List<Customer> customers,Model model){
    	int rowsCount = customers.size();
    	int totalPage = rowsCount/page.getRowsPerPage()+(rowsCount%page.getRowsPerPage()>0?1:0);
    	page.setRowsCount(rowsCount);
    	page.setTotalPage(totalPage);
    	model.addAttribute("page",page );
	}

}
