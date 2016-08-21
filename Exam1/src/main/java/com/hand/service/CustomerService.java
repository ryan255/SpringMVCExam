package com.hand.service;

import java.util.List;

import com.hand.dto.Customer;

public interface CustomerService {
	
	public List<Customer> select();

	public Customer find(String first_name);

	public void add(Customer customer);

	public void delete(int i);

	public void update(Customer customer);

	public void testTransaction(Customer customer1, Customer customer2);
}
