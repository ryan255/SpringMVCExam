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

import com.hand.dto.Address;
import com.hand.dto.Page;
import com.hand.service.AddressService;

@Controller
public class AddressSelectController {
	@Autowired
	private AddressService addressService;
	Address Address = new Address();
	List<Address> addressAll;
	
	@RequestMapping(value = "address",method = RequestMethod.POST)
	public String selectAllAddress(Model model) {
		
		List<Address> addresses = addressService.select();
		addressAll = addresses;
		model.addAttribute("addressList",addressAll);
		return "insertCustomer";
	}
}
