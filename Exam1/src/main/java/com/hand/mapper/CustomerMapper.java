package com.hand.mapper;

import java.util.List;

import com.hand.dto.Customer;

public interface CustomerMapper {
	
	public List<Customer> select();

	public Customer find(String first_name);

	public void add(Customer customer);

	public void delete(int customer_id);

	public void update(Customer customer);
}
