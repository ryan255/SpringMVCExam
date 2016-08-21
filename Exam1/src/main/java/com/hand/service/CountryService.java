package com.hand.service;

import com.hand.dto.Country;

public interface CountryService {
	public Country find(Integer country_id);

	public void add(Country country);
	
	public void delete(Country country);
	
	public void update(Country country);
	
	public void testTransaction(Country country1,Country country2);

}
