package com.hand.mapper;

import com.hand.dto.Address;;

public interface AddressMapper {
	
	public Address find(Integer address_id);

	public void add(Address address);

	public void delete(Address address);

	public void update(Address address);
}
