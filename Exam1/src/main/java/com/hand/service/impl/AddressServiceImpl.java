package com.hand.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hand.dto.Address;
import com.hand.mapper.AddressMapper;
import com.hand.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressMapper mapper;
	
	public List<Address> select() {
		// TODO Auto-generated method stub
		return mapper.select();
	}

	public Address find(Integer address_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void add(Address adress) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Address address) {
		// TODO Auto-generated method stub
		
	}

	public void update(Address address) {
		// TODO Auto-generated method stub
		
	}

	public void testTransaction(Address address1, Address address2) {
		// TODO Auto-generated method stub
		
	}

}
