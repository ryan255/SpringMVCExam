package com.hand.mapper;

import com.hand.dto.Store;

public interface StoreMapper {
	public Store find(Integer store_id);

	public void add(Store store);
	
	public void delete(Store store);
	
	public void update(Store store);
}
