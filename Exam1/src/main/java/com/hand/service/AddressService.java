package com.hand.service;

import java.util.List;

import com.hand.dto.Address;;

public interface AddressService {
	public List<Address> select();
	
	public Address find(Integer address_id);

	public void add(Address adress);

	public void delete(Address address);

	public void update(Address address);

	public void testTransaction(Address address1, Address address2);

}
