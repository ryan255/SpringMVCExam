package com.hand.mapper;

import com.hand.dto.Country;

public interface CountryMapper {

	public Country find(Integer country_id);

	public void add(Country country);
	
	public void delete(Country country);
	
	public void update(Country country);
}
