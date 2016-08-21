package com.hand.service;

import com.hand.dto.City;

public interface CityService {
	public City find(Integer city_id);

	public void add(City city);

	public void delete(City city);

	public void update(City city);

	public void testTransaction(City city1, City city2);
}
