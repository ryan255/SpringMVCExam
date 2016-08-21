package com.hand.mapper;

import com.hand.dto.City;;

public interface CityMapper {

	public City find(Integer city_id);

	public void add(City city);
	
	public void delete(City city);
	
	public void update(City city);
}