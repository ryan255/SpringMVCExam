package com.hand.mapper;

import java.util.List;

import com.hand.dto.Address;;

public interface AddressMapper {
	public List<Address> select();
	
	public Address find(Integer address_id);

	public void add(Address address);

	public void delete(Address address);

	public void update(Address address);
}
