package com.hand.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hand.dto.Customer;
import com.hand.mapper.CustomerMapper;
import com.hand.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper mapper;

	public Customer find(String first_name) {
		return mapper.find(first_name);
	}
	
	
	public void add(Customer customer) {
		mapper.add(customer);
	}

	public void delete(Customer customer) {
		mapper.delete(customer);

	}

	public void update(Customer customer) {
		// TODO Auto-generated method stub
		mapper.update(customer);

	}

	public void testTransaction(Customer customer1, Customer customer2) {
		// TODO Auto-generated method stub
		mapper.add(customer1);
		String str = null;
		str.charAt(0);
		mapper.add(customer2);

	}


	public List<Customer> select() {
		// TODO Auto-generated method stub
		return mapper.select();
	}


	

}
